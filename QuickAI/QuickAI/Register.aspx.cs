using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
        [RegularExpression("\\A(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)\\Z",
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
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void regBtn_Click(object sender, EventArgs e)
        {
            register reg = new register();
            Common con = new Common();
            reg.name = form3Example1cg.Text.ToString();
            reg.email = form3Example3cg.Text.ToString();            
            reg.Password = form3Example4cg.Text.ToString();
            //
            string query = "select userEmail from userReg where userEmail='" + email + "'";
            System.Data.DataTable dt = new DataTable();
            System.Data.DataSet ds = new DataSet();
            ds = obj.Select(query);
            dt = ds.Tables[0];
            //Boolean v = false;
            if (dt.Rows.Count == 0)
            {
                query = "insert into userReg(userName,userEmail,userPwd) values('" + name + "','" + email + "','" + pwd + "')";
                obj.Insert(query);
                _context.Response.Write("succesfully Saved into database");
            }
            else
            {
                _context.Response.Write("Present");
            }

            /////
            ///
            //reg.ConfirmPassword = txtConfirmPassword.ToString();

            //var context = new ValidationContext(reg, serviceProvider: null, items: null);
            //var results = new List<ValidationResult>();
            //var isValid = Validator.TryValidateObject(reg, context, results, true);

            //if (!isValid)
            //{
            //    foreach (var validationResult in results)
            //    {
            //        Response.Write(validationResult.ErrorMessage.ToString());
            //    }

            //    return;
            //}
            //else
            //{

            //}
        }
    }
}