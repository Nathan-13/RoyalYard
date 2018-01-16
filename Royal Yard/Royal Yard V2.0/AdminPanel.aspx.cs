using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Royal_Yard_V2._0
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] ==null)
            {
                Response.Redirect("AdminLogin.aspx");
            }   
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Remove("userName");
            Response.Redirect("AdminLogin.aspx");
        }

        protected void countrySideProject_Click(object sender, EventArgs e)
        {
            Response.Redirect("CountrySideProperties.aspx");
        }

        protected void property_Click(object sender, EventArgs e)
        {
            Response.Redirect("Property.aspx");
        }
        protected void comments_Click(object sender, EventArgs e)
        {
            Response.Redirect("Comments.aspx");
        }
    }
}