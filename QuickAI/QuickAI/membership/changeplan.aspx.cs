using Microsoft.AspNet.FriendlyUrls;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Windows;

namespace QuickAI.membership
{
    public partial class changeplan : System.Web.UI.Page
    {
        String connectionString = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
        string query = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = (string)Session["Email"];
            TextBox txt = (TextBox)Page.FindControl("viewImage");
            txt.Text = email;
            
        }
        protected void upgradeMembership(object sender, EventArgs e)
        {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "freeplan", "actionupmemb();", true);
            //page_load(sender,e);            
        }

        //button in Bank Deposit Form
        protected void forwardToTransaction(object sender, EventArgs e)
        {
            string email = (string)Session["Email"];
            Response.Redirect("../Transaction.aspx?email='" + email+"'");
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "freeplan", "actionupmemb();", true);
            //page_load(sender,e);            
        }

        protected void forwardToBankDeposit(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "forwardToBank", "forwardToBankDeposit();", true);
            //page_load(sender,e);            
        }

        protected void showBillAndSendDataToBankDepositForm(object sender, EventArgs e) {
            pmUserName.InnerText = (string)Session["Email"];
            userNameBankDeposit.InnerText= (string)Session["Email"];
            //string s = ((HtmlGenericControl)FindControl("chPara")).InnerText;
            string s = chPara.Text.ToString();
            membershipPlan.InnerText = "Extended Plan";
            string title = "Extended Plan";
            string premium = "membership";
            string paymentMethod = "Wire Transaction";
            DateTime currentDate = DateTime.Now;
            string date = currentDate.ToString();
            string status = "";
            //Database store only Current DateTime
            //Page display Updated Value
            if (s=="5") {         
                DateTime futureDate = currentDate.AddMonths(1);
                //This future display on text on there respective page
                endDate.InnerText = futureDate.ToString();
                planPurchase.InnerText = s.ToString() ;
                priceDepositForm.InnerText = s.ToString();
                TotalCost.InnerText = s.ToString();
            }
            else if (s == "50") {  
                DateTime futureDate = currentDate.AddYears(1);
                //This future display on text on there respective page
                endDate.InnerText = futureDate.ToString();
                planPurchase.InnerText = s.ToString();
                priceDepositForm.InnerText = s.ToString();
                TotalCost.InnerText = s.ToString();
            }
            else
            {
                endDate.InnerText = "LifeTime";
                planPurchase.InnerText = s;
                priceDepositForm.InnerText = s;
                TotalCost.InnerText = s;
                //LifeTime
            }
            //db
            SqlConnection con = new SqlConnection(connectionString);
            query = "insert into trans_table values('"+title+"','"+s+"','"+premium+"','"+paymentMethod+"','"+date+"','"+ status + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            MessageBox.Show("Done");
            ScriptManager.RegisterStartupScript(this, this.GetType(), "up", "showBill();", true);
        }
        //billing Details from on change plan page
        protected void billingDetails(object sender, EventArgs e) {
            //
            if (string.IsNullOrEmpty(billingUserName.Text) || string.IsNullOrEmpty(billingUserAdd.Text) || string.IsNullOrEmpty(billingUserCity.Text)
                || string.IsNullOrEmpty(billingUserState.Text) || string.IsNullOrEmpty(billingUserZip.Text) || string.IsNullOrEmpty(country.Text))
            {
                // Display an error message
                MessageBox.Show("* Field should not be empty");

                // Return without saving data
                return;
            }
            else
            {
                String type = typeSel.Text.ToString();
                string taxId = taxIdBox.Text.ToString();
                String name = billingUserName.Text.ToString();
                String add = billingUserAdd.Text.ToString();
                String city = billingUserCity.Text.ToString();
                String state = billingUserState.Text.ToString();
                String zip = billingUserZip.Text.ToString();
                String countryName = country.Text.ToString();
                query = "insert into billing values('" + type + "','" + taxId + "','" + name + "','" + add + "','" + city + "','" + state + "','" + zip + "','" + countryName + "')";
                
                try
                {
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        SqlCommand cmd = new SqlCommand(query, con);
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        MessageBox.Show("Save Billiing Details");
                        taxIdBox.Text = string.Empty;
                        billingUserName.Text = string.Empty;
                        billingUserAdd.Text = string.Empty;
                        billingUserCity.Text = string.Empty;
                        billingUserState.Text = string.Empty;
                        billingUserZip.Text = string.Empty;
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "userBillingDetails", "billingDetails();", true);
                    }
                }
                catch (SqlException ex)
                {
                    MessageBox.Show("Some Sql Exception" + ex);
                }

            }

            //accountSetting billingForm = new accountSetting();
            //billingForm.billingDetails(sender, e);
        }
    }
}
//userNameBankDeposit.InnerText= email;
//string planValue = chPara.InnerText.ToString();
//priceDepositForm.InnerText = planValue;
////package summary
//string stte = startDate.ToString();
//if (planValue == "550")            {

//    endDate.InnerText = "LifeTime";
//}
//else if (planValue == "50") {
//    DateTime currentDate = new DateTime();
//    DateTime futureDate = currentDate.AddYears(1);
//    endDate.InnerText = futureDate.ToString();
//}
//else
//{
//    DateTime currentDate = new DateTime();
//    DateTime futureDate = currentDate.AddMonths(1);
//    endDate.InnerText = futureDate.ToString();
//}
//TotalCost.InnerText = planValue;

//query = "select userName userReg where userEmail='" + email + "'";
//SqlConnection con = new SqlConnection(connectionString);
//SqlCommand cmd = new SqlCommand(query, con);
//SqlDataAdapter adp = new SqlDataAdapter(cmd);
//DataTable dt = new DataTable();
//adp.Fill(dt);
//if (dt.Rows.Count == 1)
//{
//    
//}