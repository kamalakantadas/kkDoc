using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace QuickAI
{
    /// <summary>
    /// Summary description for index
    /// </summary>
    public class index : IHttpHandler
    {        
        
        public HttpContext _context;
        String query = "";
        Common obj = new Common();
        public void ProcessRequest(HttpContext context)
        {
            obj.connect();
            _context = context;
            if (context.Request.QueryString["action"] == "validateEmail")
            {
                validateEmail();
            }
            if (context.Request.QueryString["action"] == "registerUser")
            {
                saveDataToDatabase();
            }
            if (context.Request.QueryString["action"] == "userLogin") {
                userLogin();
            }
            if (context.Request.QueryString["action"] == "checkEmail") {
                checkEmail();
            }
            if (context.Request.QueryString["action"] == "validatePassword") {
                validatePassword();
            }
            if (context.Request.QueryString["action"] == "ModifiedPassword")
            {
                ModifiedPassword();
            }
            
        }
        public class User
        {
            public string name { get; set; }
            public string email { get; set; }
            public string pwd { get; set; }

        }
        public void ModifiedPassword()
        {
            string email = _context.Request.QueryString["email"];
            string pwd = _context.Request.QueryString["pwd"];
            query = "update userReg set userPwd = '" + pwd + "' where userEmail='" + email + "'";
            obj.Select(query);
            _context.Response.Write("Yes");
        }
        public void validatePassword()
        {            
            string email = _context.Request.QueryString["email"];
            string pwd = _context.Request.QueryString["oldPwd"];
            query = "select userPwd from userReg where userEmail='" + email + "'";
            DataTable dt = new DataTable();
            dt = obj.Select(query).Tables[0];
            if (dt.Rows.Count == 1)
            {
                DataRow dr = dt.Rows[0];
                string password = dr["userPwd"].ToString();
                if (pwd == password)
                {
                    //Replace with new Password
                    string newPwd = _context.Request.QueryString["newPwd"];
                    query = "update userReg set userPwd='" + newPwd + "' where userEmail='" + email + "'";
                    obj.Insert(query);
                    _context.Response.Write("Done");
                }
                else
                {
                    //If userPassword not matched with given password
                    _context.Response.Write("No");
                }
            }

        }
        //Forogt Password Email Validation
        public void checkEmail()
        {
            User user = new User();
            string email = _context.Request.QueryString["email"];
            DataTable dt = new DataTable();
            query = "select userEmail from userReg where userEmail='" + email + "'";
            dt = obj.Select(query).Tables[0];
            int val = dt.Rows.Count;
            if (val == 1) {
                _context.Response.Write("yes");
            }                
            else
            {
                _context.Response.Write("N");
            }
            //
            /*else
            {
                DataRow dr = dt.Rows[0];
                user.email = dr["userEmail"].ToString(); ;
                user.pwd = dr["userPwd"].ToString();
                _context.Response.Write("yes");
            }   */
        }
        public void userLogin()
        {
            string userName = _context.Request.QueryString["uName"];
            string userPwd = _context.Request.QueryString["uPwd"];
            string query = "select * from userReg where userName='" + userName + "' and userPwd='" + userPwd + "'";
            DataTable dt = new DataTable();
            //String text = "";
            dt = obj.Select(query).Tables[0];
            if (dt.Rows.Count == 1)
            {
                //text = dt.Rows.
            }
            
        }
        public void validateEmail()
        {
            string email = _context.Request.QueryString["email"];
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            query = "select userEmail from userReg where userEmail='" + email + "' ";
            ds = obj.Select(query);
            dt = ds.Tables[0];
            
            Boolean v = false;
            if (dt.Rows.Count == 0)
            {
                v = true;                
            }
            _context.Response.Write(v);
        }
        public void saveDataToDatabase()
        {
            string name = _context.Request.QueryString["name"];
            string pwd = _context.Request.QueryString["pwd"];
            string email = _context.Request.QueryString["email"];
            //if Email is already there it won't save data
            query = "select userEmail from userReg where userEmail='" + email + "'";
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            ds=obj.Select(query);
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
        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}