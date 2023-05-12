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

namespace QuickAI.blogs._1
{
    public partial class blogsFirst : System.Web.UI.Page
    {
        string con = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
        string query = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string email = (string)Session["Email"];
            TextBox txt = (TextBox)Page.FindControl("viewImage");
            txt.Text = email;
            userName.InnerText = email;
            //comment Box load
            query = "select * from comment order by id desc";
            SqlConnection conn = new SqlConnection(con);
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            // Retrieve data from the database and store it in a List<string>
           
            Panel myPanel = new Panel();
            LiteralControl ulLiteral = new LiteralControl("<ul>");
            myPanel.Controls.Add(ulLiteral);
            foreach (DataRow row in dt.Rows)
            {
                // Create a LiteralControl to hold the HTML for the <li> element
                LiteralControl liLiteral = new LiteralControl(" <li style='background-color:#cbb4b4;box-shadow: 2px 2px 5px grey;'> " +
                    "<div class='row'>" + row["userEmail"] + "</div>" +
                    "<div class='row'>" + row["dateOfCom"] + "</div>" +
                    "<div class='row'>" + row["cmntText"] + "</div>" +                    
                    "</li>");

                // Add the LiteralControl for the <li> element to the LiteralControl for the <ul> element
                myPanel.Controls.Add(liLiteral);
            }
            myContainer.Controls.Add(myPanel);
            
        }
        
        protected void saveComment(object sender, EventArgs e)
        {
            string email = (string)Session["Email"];
            string text = userComment.Text.ToString();
            string todayDate = DateTime.Now.ToString();
            query = "insert into comment values(" + email + ",'" + text + "','"+todayDate+"')";
            SqlConnection conn = new SqlConnection(con);
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            //MessageBox.Show("Done");
            //Page_Load(sender, e);
            //userComment
            //    userName
        }
        protected void travelFand(object sender, EventArgs e) { }
        protected void loved(object sender, EventArgs e) { }
    }
}