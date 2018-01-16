using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace Royal_Yard_V2._0
{
    public partial class Comments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
            DataSet ds = GetData();
            gridview_Comments.DataSource = ds;
            gridview_Comments.DataBind();
        }
        private DataSet GetData()
        {
            string connString = ConfigurationManager.ConnectionStrings["RoyalYard"].ConnectionString;
            using(SqlConnection sqlConn=new SqlConnection(connString))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from ry_Comments", sqlConn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }

        }
        }

}