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
        protected void verifyEmail(object sender, EventArgs e)
        {
            string email = verifyEmailBox.Text.ToString();
            String query = "select userEmail from userReg where userEmail='" + email + "'";
            String connectionString = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
            try {
                using (SqlConnection con = new SqlConnection(connectionString)) {
                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataAdapter adpt = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adpt.Fill(dt);
                    if (dt.Rows.Count == 1)
                    {
                        MessageBox.Show("Email Verified Successfully");
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "emailBar", "hideEmailDiv();", true);
                    }
                    else
                    {
                        MessageBox.Show("Email is Not Registered");
                    }
                   
                }
            }
            catch(SqlException ex)
            {
                MessageBox.Show("Sql Erro" + ex);
            }
        }
    }
}