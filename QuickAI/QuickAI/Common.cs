using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QuickAI
{
    public class Common
    {
        public Common() { }
        public SqlDataAdapter adas;
        public SqlCommand comm;
        //Connection class
        public SqlConnection conn;
        public SqlDataReader dr;

        //code
        //Sql server
        /*Connection con = DriverManager.getConnection("jdbc:oracle:thin:driver@locahost:1521", "userName", "upwd");
        const*/
        public void connect()
        {
            String str = "Data Source=DESKTOP-GUK77OV\\SQLEXPRESS;Initial Catalog=QUICKAI;Integrated Security=True";
            this.conn= new SqlConnection(str);
        }
        public string Insert(String query)
        {
            comm = new SqlCommand(query, conn);
            adas = new SqlDataAdapter(comm);
            DataSet dset = new DataSet();
            adas.Fill(dset);
            return "";
        }
        public DataSet Select(String query)
        {
            comm = new SqlCommand(query, conn);
            comm.CommandTimeout = 0;
            adas = new SqlDataAdapter(comm);
            DataSet ds = new DataSet();
            adas.Fill(ds);
            return ds;
        }
    }
   
}