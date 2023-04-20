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
    public class Index : IHttpHandler
    {

        public HttpContext _context;
        String query = "";
        Common obj = new Common();
        public void ProcessRequest(HttpContext context)
        {
            obj.connect();
            _context = context;
            if (context.Request.QueryString["action"] == "registerUser")
            {
                saveDataToDatabase();
            }
            if (context.Request.QueryString["action"] == "validateEmail")
            {
                validateEmail();
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
            if (dt.Rows.Count > 1)
            {
                v = true;
            }
            _context.Response.Write(v);
        }
        public void saveDataToDatabase()
        {
            String name = _context.Request.QueryString["name"];
            String email = _context.Request.QueryString["email"];
            String pwd = _context.Request.QueryString["pwd"];
            query = "insert into userReg(userName,userEmail,userPwd) values('" + name + "','" + email + "','" + pwd + "')";
            obj.Insert(query);
            _context.Response.Write("succesfully Saved into database");
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