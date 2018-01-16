<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="Royal_Yard_V2._0.AdminPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <br />
            <br />
    <p  style="margin-left:180px; width:50%;">
             <asp:Button ID="property" class="button, btn btn-primary btn-large, btn-block" style = "margin-left:150px;" runat="server" Text="Property" OnClick="property_Click" />
            </p>
    <br />
    <br />
        <p  style="margin-left:180px; width:50%;">
             <asp:Button ID="countrySideProjects" class="button, btn btn-primary btn-large, btn-block" style = "margin-left:150px;" runat="server" Text="Country Side Projects" OnClick="countrySideProject_Click" />
            </p>
    <br />
    <br />
    <p  style="margin-left:180px; width:50%;">
             <asp:Button ID="admin_Comments" class="button, btn btn-primary btn-large, btn-block" style = "margin-left:150px;" runat="server" Text="Comments" OnClick="comments_Click" />
            </p>
    <br />
    <br />

            <p  style="margin-left:180px; width:50%;">
             <asp:Button ID="Logout" class="button, btn btn-primary btn-large, btn-block" style = "margin-left:150px;" runat="server" Text="Logout"  OnClick="Logout_Click" />
            </p>
                <br />
            <br />
</asp:Content>
