using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using Royal_Yard_V2._0.BAL;

namespace Royal_Yard_V2._0
{
    public partial class CountrySideProperties : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["RoyalYard"].ConnectionString;
     
        Byte[] bytes;
        Byte[] ImageBytes(FileUpload fileName)
        {
            HttpPostedFile postedFile = fileName.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength;

            if (fileExtension.ToLower() == ".jpg"
                || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp" || fileExtension.ToLower() == ".jpeg")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                bytes = binaryReader.ReadBytes((int)stream.Length);
                return bytes;
            }
            return bytes;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                GetData();
            }
            if (Session["userName"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
 
        }
       

        protected void addNewCountrySideProperty_Click(object sender, EventArgs e)
        {
            Response.Redirect("CountrySidePropertiesInformation.aspx");
        }
        protected void CSP_Update_Click(object sender, EventArgs e)
        {
           
        }
        protected void CSP_Delete_Click(object sender, EventArgs e)
        {

        }
        protected void CSP_Edit_Click(object sender, EventArgs e)
        {

        }
        protected void CSP_Cancel_Click(object sender, EventArgs e)
        {

        }
        private void GetData()
        {
            //using (SqlConnection sqlConn = new SqlConnection(connString))
            //{
            //    SqlDataAdapter da = new SqlDataAdapter("usp_showCSP", sqlConn);
            //    DataSet ds = new DataSet();
            //    da.Fill(ds);
            //    DataSet ds = GetData();
            //    ListView_CSP.DataSource = ds;
            //    ListView_CSP.DataBind();

                using (SqlConnection con = new SqlConnection())
                {
                    con.ConnectionString = connString;
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        SqlDataAdapter sda = new SqlDataAdapter("usp_showCSP", con);
                        con.Close();
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        ListView_CSP.DataSource = dt;
                        ListView_CSP.DataBind();

                    }
                }
                

            }
        
            protected void ListView_CSP_ItemEditing(object sender, ListViewEditEventArgs e)
        {
            ListView_CSP.EditIndex = e.NewEditIndex;          
            GetData();
        }
        protected void ListView_CSP_ItemCanceling(object sender, ListViewCancelEventArgs e)
        {
            ListView_CSP.EditIndex = -1;
            GetData();
        }
        protected void ListView_CSP_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            Label csPropertyId = ((Label)ListView_CSP.Items[e.ItemIndex].FindControl("lbl_csPropertyId"));
            Label cnic = ((Label)ListView_CSP.Items[e.ItemIndex].FindControl("lbl_Cnic"));
            ry_CountrySideProject objCSP = new ry_CountrySideProject();
            objCSP.Cnic = cnic.Text;
            objCSP.csPropertyId = Convert.ToInt32(csPropertyId.Text);
            objCSP.delete(objCSP);
            ry_Client objClient = new ry_Client();
            objClient.Cnic = cnic.Text;
            objClient.delete(objClient);
            ListView_CSP.EditIndex = -1;
            Response.Redirect("AdminPanel.aspx");
        }
       
        protected void ListView_CSP_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            
           
            Label cnic= ((Label)ListView_CSP.Items[e.ItemIndex].FindControl("lbl_Cnic"));
            TextBox firstName= ((TextBox)ListView_CSP.Items[e.ItemIndex].FindControl("tb_firstName"));
            TextBox lastName = ((TextBox)ListView_CSP.Items[e.ItemIndex].FindControl("tb_lastName"));
            TextBox email = ((TextBox)ListView_CSP.Items[e.ItemIndex].FindControl("tb_email"));
            TextBox contactNumber = ((TextBox)ListView_CSP.Items[e.ItemIndex].FindControl("tb_contactNumber"));
            TextBox postalAddress = ((TextBox)ListView_CSP.Items[e.ItemIndex].FindControl("tb_postalAddress"));
            TextBox permenantAddress = ((TextBox)ListView_CSP.Items[e.ItemIndex].FindControl("tb_permenantAddress"));


            Label csPropertyId = ((Label)ListView_CSP.Items[e.ItemIndex].FindControl("lbl_csPropertyId"));
            TextBox location = ((TextBox)ListView_CSP.Items[e.ItemIndex].FindControl("tb_location"));
            RadioButtonList propertyType = ((RadioButtonList)ListView_CSP.Items[e.ItemIndex].FindControl("propertyType"));
            TextBox areaSize = ((TextBox)ListView_CSP.Items[e.ItemIndex].FindControl("tb_areaSize"));
            TextBox demand = ((TextBox)ListView_CSP.Items[e.ItemIndex].FindControl("tb_demand"));
            RadioButtonList rentOrSale = ((RadioButtonList)ListView_CSP.Items[e.ItemIndex].FindControl("rentOrSale"));
            TextBox Status = ((TextBox)ListView_CSP.Items[e.ItemIndex].FindControl("tb_status"));
            TextBox propertyDescription = ((TextBox)ListView_CSP.Items[e.ItemIndex].FindControl("tb_propertyDescription"));
            TextBox agentName = ((TextBox)ListView_CSP.Items[e.ItemIndex].FindControl("tb_agentName"));
            TextBox agentContactNumber = ((TextBox)ListView_CSP.Items[e.ItemIndex].FindControl("tb_agentContactNumber"));
            FileUpload Image_CSP = ((FileUpload)ListView_CSP.Items[e.ItemIndex].FindControl("CountrySidepropertyImage"));
            Image Image_CSP_ASP = ((Image)ListView_CSP.Items[e.ItemIndex].FindControl("img"));
            

            ry_Client objClient = new ry_Client();
            objClient.Cnic = cnic.Text;
            objClient.firstName = firstName.Text;
            objClient.lastName = lastName.Text;
            objClient.email = email.Text;
            objClient.contactNumber = contactNumber.Text;
            objClient.postalAddress = postalAddress.Text;
            objClient.permenantAddress = permenantAddress.Text;
            objClient.update(objClient);

            ry_CountrySideProject objCSP = new ry_CountrySideProject();
            objCSP.Cnic = cnic.Text;
            objCSP.csPropertyId = Convert.ToInt32(csPropertyId.Text);
            objCSP.location = location.Text;
            objCSP.propertyType = propertyType.SelectedValue;
            objCSP.areaSize = areaSize.Text;
            objCSP.demand = demand.Text;
            objCSP.rentOrSale = rentOrSale.SelectedValue;
            objCSP.Status = Status.Text;
            objCSP.propertyDescription = propertyDescription.Text;
            objCSP.agentName = agentName.Text;
            objCSP.agentContactNumber = agentContactNumber.Text;
            if (Image_CSP.HasFile)
                objCSP.Image = ImageBytes(Image_CSP);
            else
                objCSP.Image = new byte[0];            
            objCSP.update(objCSP);
            ListView_CSP.EditIndex = -1;
            Response.Redirect("AdminPanel.aspx");         
        }
        

    }
}
