using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace QuickAI.membership
{
    public partial class changeplan : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "freePlan", "showBill();", true);
        }
        protected void showBill(object sender, EventArgs e) {
            //Page_Load(sender,e);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "up", "showBill();", true);
        }
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
                String query = "insert into billing values('" + type + "','" + taxId + "','" + name + "','" + add + "','" + city + "','" + state + "','" + zip + "','" + countryName + "')";
                String connectionString = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
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