<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CountrySideProperties.aspx.cs" Inherits="Royal_Yard_V2._0.CountrySideProperties" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container"> 
		<div class="row">
			<div class="col-lg-12">
        <br />
    <br /> 
             <asp:Button ID="addNewCountrySide" class="button, btn btn-primary ,"  runat="server" Text="Add new Country Side Property"  OnClick="addNewCountrySideProperty_Click" /><br /><br />
                <div style="width:100%; height:500px; overflow:auto">         
                                   <asp:ListView ID="ListView_CSP" runat="server" OnItemCanceling="ListView_CSP_ItemCanceling"
                    OnItemDeleting="ListView_CSP_ItemDeleting" OnItemEditing="ListView_CSP_ItemEditing"
                     OnItemUpdating="ListView_CSP_ItemUpdating" >
                                       <LayoutTemplate>
                         <table  class="table table-hover table-striped" style="width:200px;overflow-x:auto">
                                       <tr>
                                           <th>Image</th>
                                           <th>Id</th>
                                           <th>Location  </th>
                                           <th>Property Type  </th>
                                           <th>Area Size  </th>
                                           <th>Demand  </th>
                                           <th>Status  </th>
                                           <th>Rent Or Sale  </th>
                                           <th>Property Description  </th>
                                           <th>Agent's Name  </th>
                                           <th>Agent's Contact Number  </th>
                                           <th>Client's Cnic </th>
                                           <th>Client's First Name </th>
                                           <th>Client's Last Name</th>
                                           <th>Client's Email Address</th>
                                           <th>Client's Contact Number</th>
                                           <th>Client's Postal Address</th>
                                           <th>Client's Permenant Address</th>
                                           <th>Edit</th>
                                           <th>Delete</th>
                                       </tr>
                              <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                       </table>  
                             </LayoutTemplate>
 
                    <ItemTemplate>
                        <tr>
                            <td><img src='<%#"data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("Image")) %>' alt="W3layouts Agileits" runat="server" style="width:150px"/></td>                            
                            <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_csPropertyId" Text='<%#Eval ("csPropertyId") %>' > </asp:Label>  </td>                          
                            <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_location" Text='<%#Eval ("location") %>' > </asp:Label>  </td>
                            <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_propertyType" Text='<%#Eval ("propertyType") %>' > </asp:Label>  </td>
                            <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_areaSize" Text='<%#Eval ("areaSize") %>' > </asp:Label>  </td>
                            <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_demand" Text='<%#Eval ("demand") %>' > </asp:Label>  </td>
                            <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_status" Text='<%#Eval ("status") %>' > </asp:Label></td>
                            <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_rentOrSale" Text='<%#Eval ("rentOrSale") %>' > </asp:Label>  </td>
                            <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_propertyDescription" Text='<%#Eval ("propertyDescription") %>' > </asp:Label></td>
                            <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_agentName" Text='<%#Eval ("agentName") %>' > </asp:Label>  </td>
                            <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_agentContactNumber" Text='<%#Eval ("agentContactNumber") %>' > </asp:Label> </td>
                            <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_Cnic" Text='<%#Eval ("Cnic") %>' > </asp:Label></td>
                            <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_firstName" Text='<%#Eval ("firstName") %>' > </asp:Label>  </td>
                            <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_lastName" Text='<%#Eval ("lastName") %>' > </asp:Label>  </td>                            
                            <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_email" Text='<%#Eval ("email") %>' > </asp:Label></td>
                            <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_contactNumber" Text='<%#Eval ("contactNumber") %>' > </asp:Label> </td>
                            <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_postalAddress" Text='<%#Eval ("postalAddress") %>' > </asp:Label>  </td>
                            <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_permenantAddress" Text='<%#Eval ("permenantAddress") %>' > </asp:Label> </td>
                            <td><asp:Button ID="CSP_Edit" runat="server" class="button, btn btn-primary" CommandName="Edit" Text="Edit" OnClick="CSP_Edit_Click"/></td>
                            <td><asp:Button ID="CSP_Delete" class="button, btn btn-primary" CommandName="Delete" runat="server" Text="Delete" OnClick="CSP_Delete_Click" OnClientClick="javascript:return confirm('Are you sure to delete this record?');" /></td>                          
                        </tr>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <tr>
                        <td><asp:Image ID="img" ImageUrl='<%#"data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("Image")) %>'  alt="W3layouts Agileits" runat="server" style="width:150px">
                        </asp:Image>
                            <asp:FileUpload style="color:black;
                        font-weight:bold; color:transparent;" ID="CountrySidepropertyImage" type="file" runat="server" class="button" onchange="this.style.color='black';" /></td>
                        <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_csPropertyId" Text='<%#Eval ("csPropertyId") %>' > </asp:Label></td>
                        <td><asp:TextBox ID="tb_location" runat="server" style="font-weight:bold;" Text='<%# Bind("location") %>'></asp:TextBox></td>
                        <td><asp:RadioButtonList style="color:black;  font-weight:bold;" SelectedValue='<%# Bind("propertyType") %>'  ID="propertyType" runat="server" RepeatDirection="Horizontal"
                        Width="300px" RepeatLayout="Flow">
                        <asp:ListItem Text="Commercial" Value="Commercial"></asp:ListItem>
                        <asp:ListItem Text="Residential" Value="Residential"></asp:ListItem> 
                        </asp:RadioButtonList></td>
                        <td><asp:TextBox ID="tb_areaSize" style="font-weight:bold;" runat="server" Text='<%# Bind("areaSize") %>'></asp:TextBox></td>
                        <td><asp:TextBox ID="tb_demand" style="font-weight:bold;" runat="server" Text='<%# Bind("demand") %>'></asp:TextBox></td>
                        <td><asp:TextBox ID="tb_status" style="font-weight:bold;" runat="server" Text='<%# Bind("status") %>'></asp:TextBox></td>
                        <td><asp:RadioButtonList  ID="rentOrSale" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("rentOrSale") %>'
            Width="300px" RepeatLayout="Flow">
                <asp:ListItem Text="Rent " Value="Rent"></asp:ListItem>
                <asp:ListItem Text="Sale " Value="Sale"></asp:ListItem> 
         </asp:RadioButtonList></td>
                        <td><asp:TextBox ID="tb_propertyDescription" style="font-weight:bold;" runat="server" Text='<%# Bind("propertyDescription") %>'></asp:TextBox></td>
                        <td><asp:TextBox ID="tb_agentName" style="font-weight:bold;" runat="server" Text='<%# Bind("agentName") %>'></asp:TextBox></td>
                        <td><asp:TextBox ID="tb_agentContactNumber" style="font-weight:bold;" runat="server" Text='<%# Bind("agentContactNumber") %>'></asp:TextBox></td>
                        <td style="color:black;font-weight:bold; width:auto; "><asp:Label runat="server" ID="lbl_Cnic" Text='<%#Eval ("Cnic") %>' > </asp:Label></td>
                        <td><asp:TextBox ID="tb_firstName" style="font-weight:bold;" runat="server" Text='<%# Bind("firstName") %>'></asp:TextBox></td>
                        <td><asp:TextBox ID="tb_lastName" style="font-weight:bold;" runat="server" Text='<%# Bind("lastName") %>'></asp:TextBox></td>
                        <td><asp:TextBox ID="tb_email" style="font-weight:bold;" runat="server" Text='<%# Bind("email") %>'></asp:TextBox></td>
                        <td><asp:TextBox ID="tb_contactNumber" style="font-weight:bold;" runat="server" Text='<%# Bind("contactNumber") %>'></asp:TextBox></td>
                        <td><asp:TextBox ID="tb_postalAddress" style="font-weight:bold;" runat="server" Text='<%# Bind("postalAddress") %>'></asp:TextBox></td>
                        <td><asp:TextBox ID="tb_permenantAddress" style="font-weight:bold;" runat="server" Text='<%# Bind("permenantAddress") %>'></asp:TextBox></td>
                        <td><asp:Button runat="server" ID="CSP_Update" class="button, btn btn-primary" CommandName="Update" Text="Update" OnClick="CSP_Update_Click"/>  </td>
                        <td><asp:Button runat="server" ID="CSP_Delete" class="button, btn btn-primary" CommandName="Cancel" Text="Cancel" OnClick="CSP_Cancel_Click"/>  </td>
                         </tr>
                    </EditItemTemplate>

                                  </asp:ListView>     
      
                    </div>  
 
</div>
            </div>
        </div>
<br />
    <br />
</asp:Content>
