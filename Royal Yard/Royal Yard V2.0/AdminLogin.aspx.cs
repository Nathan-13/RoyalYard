using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


namespace Royal_Yard_V2._0
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignIn_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["RoyalYard"].ConnectionString;
            using (SqlConnection sqlConn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("Select count(*) from ry_Admin where userName='" + userName.Text + "'and userPassword='" + userPassword.Text + "'", sqlConn))
                {
                    cmd.CommandType = System.Data.CommandType.Text;
                    sqlConn.Open();
                    string output = cmd.ExecuteScalar().ToString();
                    if (output == "1")
                    {
                        Session["userName"] = userName.Text;
                        Response.Redirect("AdminPanel.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Invalid UserName or Password');", true);
                        Validity.Text = "Invalid User Name or Password";
                    }

                }
            }
        }
    }
}
