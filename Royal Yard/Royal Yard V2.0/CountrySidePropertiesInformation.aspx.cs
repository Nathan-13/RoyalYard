using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Royal_Yard_V2._0.BAL;
using System.IO;

namespace Royal_Yard_V2._0
{
    public partial class CountrySidePropertiesInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }
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
        public static List<ry_CountrySideProject> CountrySidePropertyBL = new List<ry_CountrySideProject>();
        protected void btn_CountrySidePropertiesInformation_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                ry_CountrySideProject CountrySideProperty = new ry_CountrySideProject();
                CountrySideProperty.propertyType = propertyType.SelectedItem.Value;
                CountrySideProperty.areaSize = areaSize.Text;
                CountrySideProperty.location = location.Text;
                CountrySideProperty.demand = demand.Text;
                CountrySideProperty.Status = status.Text;
                CountrySideProperty.rentOrSale = rentOrSale.SelectedItem.Value;
                CountrySideProperty.propertyDescription = propertyDescription.Text;
                CountrySideProperty.agentName = agentName.Text;
                CountrySideProperty.agentContactNumber = agentContactNumber.Text;
                CountrySideProperty.Image = ImageBytes(CountrySidepropertyImage);
                CountrySidePropertyBL.Add(CountrySideProperty);
                Response.Redirect("ClientInformation.aspx");
            }

        }
    }
}