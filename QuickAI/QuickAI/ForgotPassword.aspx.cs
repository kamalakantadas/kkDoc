using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickAI
{
    class validationPwd
    {

    }
    public class User
    {
        public string name { get; set; }
        public string email { get; set; }
        public string pwd { get; set; }

    }
    public partial class ForgotPassword : System.Web.UI.Page
    {
        //String query = "";
        string connectionString = "Data Source=DESKTOP-GUK77OV\\SQLEXPRESS;Initial Catalog=QUICKAI; Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void returnHome(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
        protected void forgotPassword(object sender, EventArgs e) {
            User user = new User();
            user.email = emailFromForgot.Text.ToString();
            string query = "select userEmail from userReg where userEmail='" + user.email + "'";
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(query, connection);
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable table = new DataTable();

                    adapter.Fill(table);
                    if (table.Rows.Count == 1)
                    {
                        Response.Redirect("UpdatePassword.aspx?email='" + user.email + "'");
                    }
                    else
                    {
                        System.Windows.MessageBox.Show("Updated unsuccessfull");
                        Response.Redirect("ForgotPassword.aspx");
                    }                
                }
            }
            catch (SqlException ex)
            {
                System.Windows.MessageBox.Show("Email Might be Incorrect "+ex.ToString());
            }
        }
    }
}