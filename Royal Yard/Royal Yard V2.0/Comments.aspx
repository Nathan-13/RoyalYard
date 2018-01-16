<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="Royal_Yard_V2._0.Comments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="container"> 
		<div class="row">
			<div class="col-lg-12">
	
  <asp:GridView runat="server" ID="gridview_Comments" style="margin-left:150px; font-weight:  bolder;


 border-spacing: 2px;
    width:auto;" CssClass="table"  RowStyle-ForeColor="Black" ></asp:GridView>
                </div>
      </div>
        </div>
    <br /
    <br />
</asp:Content>
