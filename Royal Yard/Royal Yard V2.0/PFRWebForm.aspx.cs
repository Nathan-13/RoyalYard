using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Royal_Yard_V2._0
{
    public partial class PFRWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = GetData();
            PFRWebForm_Repeater.DataSource = ds;
            PFRWebForm_Repeater.DataBind();

        }
        private DataSet GetData()
        {
            string connString = ConfigurationManager.ConnectionStrings["RoyalYard"].ConnectionString;
            using (SqlConnection sqlConn = new SqlConnection(connString))
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from ry_Property where rentOrSale='Rent';", sqlConn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }
    }
}