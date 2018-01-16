<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ClientInformation.aspx.cs" Inherits="Royal_Yard_V2._0.ClientInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="panel-group">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h2>Client Information</h2>
                </div>
            <div class="panel-body">
                <div class="panel-body">
         <asp:Table ID="clientInformationTable" runat="server" >
          <asp:TableRow ID="TableRow3" runat="server">            
            <asp:TableCell><asp:Label style="color:black;
  font-weight:bold;" ID="label1"  runat="server" Text="CNIC"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox style="color:black;
  font-weight:bold;" class="form-control" ID="cnic" runat="server"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ControlToValidate="cnic" style="font-weight:600;" ForeColor="Red"  ErrorMessage="Valid Cnic required*" ValidationExpression="^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$"></asp:RegularExpressionValidator>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" style="font-weight:600;" ErrorMessage="CNIC Required*" ForeColor="Red" ControlToValidate="cnic"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="TableRow1"   runat="server">
         <asp:TableCell><asp:Label style="color:black;
  font-weight:bold;" ID="label2" runat="server" Text="First Name"></asp:Label></asp:TableCell>
         <asp:TableCell><asp:TextBox style="color:black;
  font-weight:bold;" class="form-control" ID="firstName" runat="server"></asp:TextBox></asp:TableCell>
         <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  ControlToValidate="firstName" style="font-weight:600;" ForeColor="Red"  ErrorMessage="Please Use between 3 and 32 characters*" ValidationExpression="^.{3,32}$"
></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator3" style="font-weight:600;" runat="server" ErrorMessage="  First Name Required*" ForeColor="Red" ControlToValidate="firstName"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow   ID="TableRow2"   runat="server">
         <asp:TableCell><asp:Label style="color:black;
  font-weight:bold;" ID="label3"  runat="server" Text="Last Name"></asp:Label></asp:TableCell>
         <asp:TableCell><asp:TextBox style="color:black;
  font-weight:bold;" class="form-control" ID="lastName" runat="server"></asp:TextBox></asp:TableCell>
         <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"  ControlToValidate="lastName" style="font-weight:600;" ForeColor="Red"  ErrorMessage="Please Use between 3 and 32 characters*" ValidationExpression="^.{3,32}$"
></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator1" style="font-weight:600;" runat="server" ErrorMessage="Last Name Required*" ForeColor="Red" ControlToValidate="lastName"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow   ID="TableRow8"   runat="server">
            <asp:TableCell><asp:Label style="color:black;
  font-weight:bold;" ID="label7" runat="server" Text="Postal Address"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox style="color:black;
  font-weight:bold;" ID="postalAddress" class="form-control" runat="server"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"  ControlToValidate="postalAddress" style="font-weight:600;" ForeColor="Red"  ErrorMessage="Please Use between 10 and 200 characters*" ValidationExpression="^.{10,200}$"
></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator6" style="font-weight:600;" runat="server" ErrorMessage="Postal Address Required*" ForeColor="Red" ControlToValidate="postalAddress"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow   ID="TableRow9"   runat="server">
            <asp:TableCell><asp:Label style="color:black;
  font-weight:bold;" ID="label18" runat="server" Text="Permenant Address"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox style="color:black;
  font-weight:bold;" ID="permenantAddress" class="form-control" runat="server"></asp:TextBox></asp:TableCell>
             <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"  ControlToValidate="permenantAddress" style="font-weight:600;" ForeColor="Red"  ErrorMessage="Please Use between 10 and 200 characters*" ValidationExpression="^.{10,200}$"
></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator7" style="font-weight:600;" runat="server" ErrorMessage="Permenent Address Required*" ForeColor="Red" ControlToValidate="permenantAddress"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow   ID="TableRow10"   runat="server">
            <asp:TableCell><asp:Label style="color:black;
  font-weight:bold;" ID="label9" runat="server" Text="Email"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox style="color:black;
  font-weight:bold;" ID="email" class="form-control" runat="server"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:RegularExpressionValidator ID="expEmail" runat="server"  ControlToValidate="email" style="font-weight:600;" ForeColor="Red"  ErrorMessage="Valid Email Address Required*" ValidationExpression="^([a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]){1,70}$"></asp:RegularExpressionValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator8" style="font-weight:600;" runat="server" ErrorMessage="Email Required*" ForeColor="Red" ControlToValidate="email"></asp:RequiredFieldValidator></asp:TableCell>
         </asp:TableRow>
         <asp:TableRow   ID="TableRow12"   runat="server">
            <asp:TableCell><asp:Label style="color:black;
  font-weight:bold;" ID="label10" runat="server" Text="Cell Phone Number"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox style="color:black;
  font-weight:bold;" ID="cellPhoneNumber" class="form-control" runat="server"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"  ControlToValidate="cellPhoneNumber" style="font-weight:600;" ForeColor="Red"  ErrorMessage="Enter a Valid Mobile Number*" ValidationExpression="^((\+92)|(0092))-{0,1}\d{3}-{0,1}\d{7}$|^\d{11}$|^\d{4}-\d{7}$"></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator10" style="font-weight:600;" runat="server" ErrorMessage="Cell Phone Number Required*" ForeColor="Red" ControlToValidate="cellPhoneNumber"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
                    <br />
         <asp:Button ID="btn_clientInformation" runat="server" class="btn btn-primary btn-lg" Text="Finish" OnClick="btn_ClientInformation_Click" Width="118px" />
        </div>
        </div>
            </div>
       </div>
    <br />
    <br />
</asp:Content>
