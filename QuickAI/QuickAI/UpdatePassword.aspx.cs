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
    class UpdatePasswordValidation
    {
        //[Required(ErrorMessage = "Name is required")]
        //public string name
        //{
        //    get;
        //    set;
        //}

        //[Required(ErrorMessage = "email is required")]
        //[RegularExpression("\\A(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)\\Z",
        //ErrorMessage = "Please enter proper email")]
        //public string email
        //{
        //    get;
        //    set;
        //}

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

        [Required(ErrorMessage = "Confirm Password is required")]
        [DataType(DataType.Password)]
        [Compare("Password")]
        public string ConfirmPassword
        {
            get;
            set;
        }

        //[Required(ErrorMessage = "Age is required")]
        //[Range(typeof(int), "18", "40", ErrorMessage = "Age can only be between 18 and 40")]
        //public string age
        //{
        //    get;
        //    set;
        //}
    }
    public partial class UpdatePassword : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-GUK77OV\\SQLEXPRESS;Initial Catalog=QUICKAI; Integrated Security=True";
        string query = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //string email = Request.QueryString["email"];
        }
        //Updated Password
        protected void updatePd(object sender,EventArgs e)
        {           
            UpdatePasswordValidation reg = new UpdatePasswordValidation();
            string email = Request.QueryString["email"];
            reg.Password = Pwd.Text.ToString();
            reg.ConfirmPassword = cnfPwd.Text.ToString();
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
                try
                {
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        query = "update userReg set userPwd = '" + reg.Password + "' where userEmail=" + email + "";
                        SqlCommand command = new SqlCommand(query, connection);
                        SqlDataAdapter adapter = new SqlDataAdapter(command);
                        DataTable table = new DataTable();
                        adapter.Fill(table);
                        MessageBox.Show("Updated Successfully");
                        Response.Redirect("dashboard.aspx");
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
