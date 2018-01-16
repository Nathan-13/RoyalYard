using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Royal_Yard_V2._0.BAL;

namespace Royal_Yard_V2._0
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_Comments_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                ry_Comments Comments = new ry_Comments();
                Comments.Name = name.Text;
                Comments.Email = email.Text;
                Comments.Comments = comments.Text;
                Comments.Date = DateTime.Now;
                Comments.insert(Comments);
                Response.Redirect("Index.aspx");
            }
        }
    }
}