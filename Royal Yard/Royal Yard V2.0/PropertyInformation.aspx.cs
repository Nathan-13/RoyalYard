using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Royal_Yard_V2._0.BAL;

namespace Royal_Yard_V2._0
{
    public partial class PropertyInformation : System.Web.UI.Page
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
        public static List<ry_Property> PropertyBL = new List<ry_Property>();
        protected void btn_PropertiesInformation_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                ry_Property Property = new ry_Property();
                Property.propertyType = propertyType.SelectedItem.Value;
                Property.areaSize = areaSize.Text;
                Property.demand = demand.Text;
                Property.location = location.Text;
                Property.Status = status.Text;
                Property.rentOrSale = rentOrSale.SelectedItem.Value;
                Property.propertyDescription = propertyDescription.Text;
                Property.agentName = agentName.Text;
                Property.agentContactNumber = agentContactNumber.Text;
                Property.Image = ImageBytes(propertyImage);
                PropertyBL.Add(Property);
                Response.Redirect("ClientInformation.aspx");
            }

        }
    }
}