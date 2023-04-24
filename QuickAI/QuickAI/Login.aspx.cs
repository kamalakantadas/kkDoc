using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace QuickAI
{
    public partial class Login : System.Web.UI.Page
    {
        Common obj = new Common();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void sgnBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx", true);
        }
        protected void lgnBtn_Click(object sender, EventArgs e) {
            String email = uEmail.Text.ToString();
            String pwd = uPwd.Text.ToString();
           // string query = "select * from userReg where userEmail='" + email + "' and userPwd='" + pwd + "'";

            //String text = "";
            string connectionString = "Data Source=DESKTOP-GUK77OV\\SQLEXPRESS;Initial Catalog=QUICKAI; Integrated Security=True";
            string query = "select * from userReg where userEmail='" + email + "' and userPwd='" + pwd + "'";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable table = new DataTable();

                adapter.Fill(table);
                if (table.Rows.Count == 1)
                {
                    MessageBox.Show("Successfully Login");
                }
                else
                {
                    MessageBox.Show("User Is Not Exist");
                }
            }           
        }
    }
}