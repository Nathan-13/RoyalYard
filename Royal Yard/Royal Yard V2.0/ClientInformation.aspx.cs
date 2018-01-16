using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Royal_Yard_V2._0.BAL;

namespace Royal_Yard_V2._0
{
    public partial class ClientInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }
        ry_Client ClientBLL = new ry_Client();
        ry_CountrySideProject CountrySideBLL = new ry_CountrySideProject();
        ry_Property PropertyBLL = new ry_Property();
        protected void btn_ClientInformation_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                ClientBLL.Cnic = cnic.Text;
                ClientBLL.firstName = firstName.Text;
                ClientBLL.lastName = lastName.Text;
                ClientBLL.email = email.Text;
                ClientBLL.contactNumber = cellPhoneNumber.Text;
                ClientBLL.postalAddress = postalAddress.Text; ;
                ClientBLL.permenantAddress = permenantAddress.Text;
                ClientBLL.insert(ClientBLL);


                if (CountrySidePropertiesInformation.CountrySidePropertyBL.Count > 0)
                {
                    foreach (var item in CountrySidePropertiesInformation.CountrySidePropertyBL)
                    {

                        CountrySideBLL.Cnic = ClientBLL.Cnic;
                        CountrySideBLL.location = item.location;
                        CountrySideBLL.propertyType = item.propertyType;
                        CountrySideBLL.areaSize = item.areaSize;
                        CountrySideBLL.demand = item.demand;
                        CountrySideBLL.Status = item.Status;
                        CountrySideBLL.rentOrSale = item.rentOrSale;
                        CountrySideBLL.propertyDescription = item.propertyDescription;
                        CountrySideBLL.agentName = item.agentName;
                        CountrySideBLL.agentContactNumber = item.agentContactNumber;
                        CountrySideBLL.Image = item.Image;
                        CountrySideBLL.insert(CountrySideBLL);
                        CountrySidePropertiesInformation.CountrySidePropertyBL.Clear();
                        Response.Redirect("AdminPanel.aspx");

                    }
                }
                if (PropertyInformation.PropertyBL.Count > 0)
                {
                    foreach (var item in PropertyInformation.PropertyBL)
                    {
                        PropertyBLL.Cnic = ClientBLL.Cnic;
                        PropertyBLL.location = item.location;
                        PropertyBLL.propertyType = item.propertyType;
                        PropertyBLL.areaSize = item.areaSize;
                        PropertyBLL.demand = item.demand;
                        PropertyBLL.Status = item.Status;
                        PropertyBLL.rentOrSale = item.rentOrSale;
                        PropertyBLL.propertyDescription = item.propertyDescription;
                        PropertyBLL.agentName = item.agentName;
                        PropertyBLL.agentContactNumber = item.agentContactNumber;
                        PropertyBLL.Image = item.Image;
                        PropertyBLL.insert(PropertyBLL);
                        PropertyInformation.PropertyBL.Clear();
                        Response.Redirect("AdminPanel.aspx");
                    }
                }


            }

        }
    }
}