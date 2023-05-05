using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
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
    class verfiyAccountSetting
    {
      
        //[Required(ErrorMessage = "Name is required")]
        //public string name
        //{
        //    get;
        //    set;
        //}

        //[Required(ErrorMessage = "email is required")]
        //[RegularExpression("\\A(?:[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)\\Z",
        //ErrorMessage = "Please enter proper email")]
        //public string email
        //{
        //    get;
        //    set;
        //}

        //[Required(ErrorMessage = "Mobile is required")]
        //[RegularExpression("\\d{10}", ErrorMessage = "Please enter 10 digit Mobile No.")]
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

        [Required(ErrorMessage = "confirm password is required")]
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
    public partial class accountSetting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //account setting autofill
            string email = (string)Session["Email"];
            TextBox txt = (TextBox)Page.FindControl("viewImage");
            txt.Text = email;
            try {
                String connectionString = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
                //string connectionString = "Data Source=DESKTOP-GUK77OV\\SQLEXPRESS;Initial Catalog=QUICKAI; Integrated Security=True";
                String query = "select userName,userEmail from userReg where userEmail=" + email + "";
                using (SqlConnection con = new SqlConnection(connectionString)) {
                    //con.Open();
                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    String userName = "";
                    sda.Fill(dt);
                    if (dt.Rows.Count == 1)
                    {
                        DataRow dr = dt.Rows[0];
                        email = dr["userEmail"].ToString();
                        userName = dr["userName"].ToString();
                    }
                    TextBox uName = (TextBox)Page.FindControl("userName");
                    uName.Text = userName;
                    TextBox uEmail = (TextBox)Page.FindControl("userEmail");
                    uEmail.Text = email;
                }               
            }
            catch(SqlException ex)
            {
                Response.Write(ex.ToString() + "Error");
            }            
        }
        protected void updatePwd(object sender, EventArgs e)
        {
            verfiyAccountSetting reg = new verfiyAccountSetting();
            // register reg = new register();
            //Image code
          
            //image.InputStream.Read(imgarray, 0, imagefilelenth);
            if (imageInput.HasFile)
            {
                int imagefilelenth = imageInput.PostedFile.ContentLength;
                byte[] imgarray = new byte[imagefilelenth];
                HttpPostedFile image = imageInput.PostedFile;

                String email = userEmail.Text.ToString();
                String uName = userName.Text.ToString();
                reg.Password = userPwd.Text.ToString();
                reg.ConfirmPassword = userRePwd.Text.ToString();
                var context = new ValidationContext(reg, serviceProvider: null, items: null);
                var results = new List<ValidationResult>();
                var isValid = Validator.TryValidateObject(reg, context, results, true);

                if (!isValid)
                {
                    foreach (var validationResult in results)
                    {
                        MessageBox.Show("Password not Matched");
                    }

                    return;
                }
                else
                {
                    //CONVERT(varbinary(max), '0x3F6B5D9A3C')
                    string query = "update userReg set userPwd='" + reg.Password + "',userImg='" + imgarray + "' where userEmail='" + email + "' ";
                    String connectionString = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
                    try
                    {
                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            SqlCommand command = new SqlCommand(query, connection);
                            SqlDataAdapter adapter = new SqlDataAdapter(command);
                            DataTable table = new DataTable();

                            adapter.Fill(table);

                            MessageBox.Show("saved Successfully");
                            userPwd.Text = string.Empty;
                            userRePwd.Text = string.Empty;
                            
                        }
                    }
                    catch (SqlException ex)
                    {
                        MessageBox.Show(ex.ToString());
                    }
                }
            }     
                          
        }
        
        //Billing Details of Account Setting Page
        protected void billingDetails(object sender, EventArgs e) 
        {
            //
            if (string.IsNullOrEmpty(billingUserName.Text) || string.IsNullOrEmpty(billingUserAdd.Text) || string.IsNullOrEmpty(billingUserCity.Text)
                || string.IsNullOrEmpty(billingUserState.Text)|| string.IsNullOrEmpty(billingUserZip.Text)|| string.IsNullOrEmpty(country.Text))
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
            
        }
    }
}