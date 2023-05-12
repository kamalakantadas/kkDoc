using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Documents;
using static System.Net.Mime.MediaTypeNames;
using Table = System.Web.UI.WebControls.Table;
using TableCell = System.Web.UI.WebControls.TableCell;
using TableRow = System.Web.UI.WebControls.TableRow;

namespace QuickAI
{
    public partial class Transaction : System.Web.UI.Page
    {
        string conn=ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
        string query = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = (string)Session["Email"];
            TextBox txt = (TextBox)Page.FindControl("viewImage");
            txt.Text = email;
            query = "select * from trans_table order by id desc";
            SqlConnection con = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            
            Table myTable = (Table)FindControl("tableData");
            if (dt.Rows.Count > 0) {
                foreach(DataRow dr in dt.Rows)
                {
                    TableRow tr = new TableRow();
                    TableCell td1 = new TableCell();
                    TableCell td2 = new TableCell();
                    TableCell td3 = new TableCell();
                    TableCell td4 = new TableCell();
                    TableCell td5 = new TableCell();
                    TableCell td6 = new TableCell();
                    td1.Text= dr["title"].ToString();
                    td2.Text= dr["amount"].ToString();
                    td3.Text= dr["premium"].ToString();
                    td4.Text= dr["paymentMethod"].ToString();
                    td5.Text= dr["date"].ToString();
                    td6.Text= dr["status"].ToString();

                    tr.Cells.Add(td1);
                    tr.Cells.Add(td2);
                    tr.Cells.Add(td3);
                    tr.Cells.Add(td4);
                    tr.Cells.Add(td5);
                    tr.Cells.Add(td6);
                    myTable.Rows.Add(tr);
                }
            }       

        }
    }
}