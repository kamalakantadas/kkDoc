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
        }
        public class User
        {
            String name { get; set; }
            String email { get; set; }
            String pwd { get; set; }

        }
        public void checkEmail()
        {
            User user = new User();
            String email = _context.Request.QueryString["email"];
            DataTable dt = new DataTable();
            query = "select userEmail,userPwd from userReg wher userEmail='" + email + "'";
            dt = obj.Select(query).Tables[0];
            String text = "";

            

            if (dt.Rows.Count == 0)
            {
                text = "no";
            }
            else
            {
                text = "yes";
            }
            _context.Response.Write(text);
        }
        public void userLogin()
        {
            String userName = _context.Request.QueryString["uName"];
            String userPwd = _context.Request.QueryString["uPwd"];            
            query = "select * from userReg where userName='" + userName + "' and userPwd='" + userPwd + "'";
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
            String email = _context.Request.QueryString["email"];
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
            String name = _context.Request.QueryString["name"];
            String pwd = _context.Request.QueryString["pwd"];
            String email = _context.Request.QueryString["email"];
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