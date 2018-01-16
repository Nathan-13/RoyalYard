<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CountrySidePropertiesInformation.aspx.cs" Inherits="Royal_Yard_V2._0.CountrySidePropertiesInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="panel-group">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h2>Country Side Property Information</h2>
                </div>
            <div class="panel-body">
                <div class="panel-body">
         <asp:Table ID="clientInformationTable" runat="server" >
              <asp:TableRow   ID="TableRow2"   runat="server">
         <asp:TableCell><asp:Label style="color:black;
  font-weight:bold;" ID="label3" runat="server" Text="Area Size"></asp:Label></asp:TableCell>
         <asp:TableCell><asp:TextBox style="color:black;
  font-weight:bold;" class="form-control" ID="areaSize" runat="server"></asp:TextBox></asp:TableCell>
         <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  ControlToValidate="areaSize" style="font-weight:600;" ForeColor="Red"  ErrorMessage="Please Use between 2 and 32 characters*" ValidationExpression="^.{2,32}$"
></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" style="font-weight:600;" ErrorMessage="Area Size Required*" ForeColor="Red" ControlToValidate="areaSize"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
             <asp:TableRow   ID="TableRow3"   runat="server">
         <asp:TableCell><asp:Label style="color:black;
  font-weight:bold;" ID="label1" runat="server" Text="Location"></asp:Label></asp:TableCell>
         <asp:TableCell><asp:TextBox style="color:black;
  font-weight:bold;" class="form-control" ID="location" runat="server"></asp:TextBox></asp:TableCell>
         <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ControlToValidate="location" style="font-weight:600;" ForeColor="Red"  ErrorMessage="Please Use between 2 and 32 characters*" ValidationExpression="^.{2,32}$"
></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" style="font-weight:600;" ErrorMessage="Location Required*" ForeColor="Red" ControlToValidate="location"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>       
                       <asp:TableRow ID="TableRow6" runat="server">
            <asp:TableCell><asp:Label ID="label5" style="color:black;
  font-weight:bold;" runat="server" Text="Property Type"></asp:Label></asp:TableCell>
            <asp:TableCell>
         <asp:RadioButtonList  ID="propertyType" runat="server" RepeatDirection="Horizontal"
Width="300px" RepeatLayout="Flow">
                <asp:ListItem Text="Commercial " Value="Commercial"></asp:ListItem>
                <asp:ListItem Text="Residential " Value="Residential"></asp:ListItem> 
         </asp:RadioButtonList>
            </asp:TableCell>
        <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" style="font-weight:600;" ErrorMessage="Select Property Type*" ForeColor="Red" ControlToValidate="propertyType"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow   ID="TableRow8"   runat="server">
            <asp:TableCell><asp:Label style="color:black;
  font-weight:bold;" ID="label7" runat="server" Text="Status"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox style="color:black;
  font-weight:bold;" ID="status" class="form-control" runat="server"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"  ControlToValidate="Status" style="font-weight:600;" ForeColor="Red"  ErrorMessage="Please Use between 2 and 32 characters*" ValidationExpression="^.{2,32}$"
></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" style="font-weight:600;" ErrorMessage="Status Required*" ForeColor="Red" ControlToValidate="status"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow   ID="TableRow9"   runat="server">
            <asp:TableCell><asp:Label style="color:black;
  font-weight:bold;" ID="label18" runat="server" Text="Demand"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox style="color:black;
  font-weight:bold;" ID="demand" class="form-control" runat="server"></asp:TextBox></asp:TableCell>
             <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"  ControlToValidate="Demand" style="font-weight:600;" ForeColor="Red"  ErrorMessage="Please Use between 2 and 32 characters*" ValidationExpression="^.{2,32}$"
></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" style="font-weight:600;" ErrorMessage="Demand Required*" ForeColor="Red" ControlToValidate="demand"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
                       <asp:TableRow ID="TableRow1" runat="server">
            <asp:TableCell><asp:Label style="color:black;
  font-weight:bold;" ID="label2" runat="server" Text="Rent Or Sale"></asp:Label></asp:TableCell>
            <asp:TableCell>
         <asp:RadioButtonList  ID="rentOrSale" runat="server" RepeatDirection="Horizontal"
            Widt="300px" RepeatLayout="Flow">
                <asp:ListItem Text="Rent " Value="Rent"></asp:ListItem>
                <asp:ListItem Text="Sale " Value="Sale"></asp:ListItem> 
         </asp:RadioButtonList>
            </asp:TableCell>
        <asp:TableCell><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" style="font-weight:600;" ErrorMessage="Select Rent Or Sale*" ForeColor="Red" ControlToValidate="rentOrSale"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>         
             <asp:TableRow   ID="TableRow12"   runat="server">
            <asp:TableCell><asp:Label style="color:black;
  font-weight:bold;" ID="label10" runat="server" Text="Property Description"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox style="color:black;
  font-weight:bold;" ID="propertyDescription" class="form-control" runat="server"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"  ControlToValidate="propertyDescription" style="font-weight:600;" ForeColor="Red"  ErrorMessage="Please Use between 2 and 32 characters*" ValidationExpression="^.{2,32}$"
></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" style="font-weight:600;" ErrorMessage="Property Description Required*" ForeColor="Red" ControlToValidate="propertyDescription"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
                     <asp:TableRow   ID="TableRow4"   runat="server">
            <asp:TableCell><asp:Label style="color:black;
  font-weight:bold;" ID="label4" runat="server" Text="Agent Name"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox style="color:black;
  font-weight:bold;" ID="agentName" class="form-control" runat="server"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"  ControlToValidate="agentName" style="font-weight:600;" ForeColor="Red"  ErrorMessage="Please Use between 2 and 32 characters*" ValidationExpression="^.{2,32}$"
></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator4" style="font-weight:600;" runat="server" ErrorMessage="Agent Name Required*" ForeColor="Red" ControlToValidate="agentName"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
                     <asp:TableRow   ID="TableRow5"   runat="server">
            <asp:TableCell><asp:Label style="color:black;
  font-weight:bold;" ID="label6" runat="server" Text="Agent Contact Number"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox style="color:black;
  font-weight:bold;" ID="agentContactNumber" class="form-control" runat="server"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server"  ControlToValidate="agentContactNumber" style="font-weight:600;" ForeColor="Red"  ErrorMessage="Enter Valid Contact Number*" ValidationExpression="^((\+92)|(0092))-{0,1}\d{3}-{0,1}\d{7}$|^\d{11}$|^\d{4}-\d{7}$"
></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" style="font-weight:600;" ErrorMessage="Agent Contact Number Required*" ForeColor="Red" ControlToValidate="agentContactNumber"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>           
            <asp:TableRow   ID="TableRow20"   runat="server">
            <asp:TableCell><asp:Label style="color:black;
  font-weight:bold;" ID="label19" runat="server" Text="Image"></asp:Label></asp:TableCell>
             <asp:TableCell><asp:FileUpload style="color:black;
  font-weight:bold;" ID="CountrySidepropertyImage" type="file" runat="server" /></asp:TableCell>    
                <asp:TableCell><asp:RegularExpressionValidator 
 id="RegularExpressionValidator8" runat="server" 
 ErrorMessage="Only jpg, bmp and png files are allowed!" 
 ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.jpg|.bmp)$" 
 ControlToValidate="CountrySidepropertyImage" ForeColor="Red" style="font-weight:600;"></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" style="font-weight:600;" ErrorMessage="Image Required*" ForeColor="Red" ControlToValidate="CountrySidepropertyImage"></asp:RequiredFieldValidator></asp:TableCell>    
</asp:TableRow> 
    </asp:Table>
                    <br />
         <asp:Button ID="btn_CountrySidePropertiesInformation" runat="server" class="btn btn-primary"  Text="Next" OnClick="btn_CountrySidePropertiesInformation_Click" Width="118px" />
        </div>
        </div>
            </div>
       </div>
    <br />
    <br />
</asp:Content>
