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
    public class register
    {
        [Required(ErrorMessage = "Name is required")]
        public string name
        {
            get;
            set;
        }

        [Required(ErrorMessage = "email is required")]
        [RegularExpression("\\A(?:[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)\\Z",
        ErrorMessage = "Please enter proper email")]
        /*[RegularExpression("\\w + ([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*",ErrorMessage="Please enter proper email")]*/
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
    public partial class Register : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-GUK77OV\\SQLEXPRESS;Initial Catalog=QUICKAI; Integrated Security=True";
        string query = "";

        public object lblError { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void gohomeFromRegister(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx", true);
        }
        /*protected void verifyEmail(object sender, EventArgs e)
        {
            string email = form3Example3cg.Text.Trim();
            bool isValidEmail = ValidateEmailFromDatabase(email);

            if (!isValidEmail)
            {
                MessageBox.Show("Invalid Email");
                // You can also clear the TextBox or take other actions as needed.
            }
            else
            {
                MessageBox.Show("Email is already registered");
            }
        }
        protected Boolean ValidateEmailFromDatabase(string email)
        {
            register reg = new register();
            Common obj = new Common();
            reg.email = form3Example3cg.Text.ToString();            
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            query = "select userEmail from userReg where userEmail='" + reg.email + "'";
            Boolean check = false;
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
                        check = true;
                    }                   
                }
            }
            catch (SqlException ex)
            {
                MessageBox.Show("Some Sql Problem while sending Data to Database: " + ex.Message);
            }
            return check;
        }*/
        protected void regBtn_Click(object sender, EventArgs e)
        {
            register reg = new register();
            Common obj = new Common();
            reg.name = form3Example1cg.Text.ToString();
            reg.email = form3Example3cg.Text.ToString();            
            reg.Password = form3Example4cg.Text.ToString();
            reg.ConfirmPassword = form3Example4cdg.Text.ToString();

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
                //if form validation is complete then user registered properly
                try
                {
                    query = "insert into userReg(userName,userEmail,userPwd) values('" + reg.name + "','" + reg.email + "','" + reg.Password + "')";
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        SqlCommand command = new SqlCommand(query, connection);
                        SqlDataAdapter adapter = new SqlDataAdapter(command);
                        DataTable table = new DataTable();
                        adapter.Fill(table);
                        MessageBox.Show("Successfully Registered!!");
                    }
                }catch(SqlException ex)
                {
                    MessageBox.Show("Sql Error Only Devloper know how to handle "+ex.Message);
                }
            }            
        }

        protected void form3Example1cg_TextChanged(object sender, EventArgs e)
        {

        }

        protected void form3Example3cg_TextChanged(object sender, EventArgs e)
        {

        }
    }
}