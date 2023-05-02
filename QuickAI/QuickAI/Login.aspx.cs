using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace QuickAI
{
    class loginRegistrationValidation
    {
        //[Required(ErrorMessage = "Name is required")]
        //public string name
        //{
        //    get;
        //    set;
        //}

        [Required(ErrorMessage = "email is required")]
        [RegularExpression("\\A(?:[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)\\Z",
        ErrorMessage = "Please enter proper email")]
        public string email
        {
            get;
            set;
        }

        //[Required(ErrorMessage = "Mobile is required")]
        //[RegularExpression(@ "\\d{10}", ErrorMessage = "Please enter 10 digit Mobile No.")]
        //public string mobile
        //{
        //    get;
        //    set;
        //}

        [Required(ErrorMessage = "Password is required")]
        [DataType(DataType.Password)]
        public string Password
        {
            get;
            set;
        }

        //[Required(ErrorMessage = "Confirm Password is required")]
        //[DataType(DataType.Password)]
        //[Compare("Password")]
        //public string ConfirmPassword
        //{
        //    get;
        //    set;
        //}

        //[Required(ErrorMessage = "Age is required")]
        //[Range(typeof(int), "18", "40", ErrorMessage = "Age can only be between 18 and 40")]
        //public string age
        //{
        //    get;
        //    set;
        //}
    }
    
    public partial class Login : System.Web.UI.Page
    {
        //Common obj = new Common();
        string connectionString = "Data Source=DESKTOP-GUK77OV\\SQLEXPRESS;Initial Catalog=QUICKAI; Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void gotoHomePage(object sender, EventArgs e) 
        {
            Response.Redirect("Index.aspx", true);
        }
        protected void sgnBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx", true);
        }
        protected void lgnBtn_Click(object sender, EventArgs e) {
            loginRegistrationValidation reg = new loginRegistrationValidation();
           // register reg = new register();
            reg.email = uEmail.Text.ToString();
            reg.Password = uPwd.Text.ToString();            
            var context = new ValidationContext(reg, serviceProvider: null, items: null);
            var results = new List<ValidationResult>();
            var isValid = Validator.TryValidateObject(reg, context, results, true);
            
            if (!isValid)
            {
                foreach (var validationResult in results)
                {
                    Response.Write(validationResult.ErrorMessage.ToString());
                }

                return;
            }
            else
            {
                //string connectionString = "Data Source=DESKTOP-GUK77OV\\SQLEXPRESS;Initial Catalog=QUICKAI; Integrated Security=True";
                string query = "select * from userReg where userEmail='" + reg.email + "' and userPwd='" + reg.Password + "'";
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
                            Response.Redirect("dashboard.aspx?email='" + reg.email + "'");                                
                        }
                        else
                        {
                            MessageBox.Show("User Is Not Exist");
                        }
                    }
                }
                catch (SqlException ex)
                {
                    MessageBox.Show(ex.ToString());
                }
                
            }                   
        }
    }
}













//using (SqlConnection connection = new SqlConnection(connectionString))
//{
//    SqlCommand command = new SqlCommand(query, connection);
//    SqlDataAdapter adapter = new SqlDataAdapter(command);
//    DataTable table = new DataTable();

//    adapter.Fill(table);
//    if (table.Rows.Count == 1)
//    {
//        MessageBox.Show("Successfully Login");
//    }
//    else
//    {
//        MessageBox.Show("User Is Not Exist");
//    }
//}