<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Royal_Yard_V2._0.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'/>
<link rel="stylesheet" href="/css/loginstyle.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="login-wrap">
        <div class="login-html">
            <input id="tab-1" type="radio" name="tab" class="sign-in" /><label for="tab-1" class="tab">Sign In</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up"/><label/ for="tab-2" class="tab"></label/>
            <div class="login-form">
                <div class="sign-in-htm">
                    <div class="group">
                        <label for="user" class="label">Username</label>
                        <asp:TextBox ID="userName" name="userName" class="input" runat="server"></asp:TextBox>
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Password</label>
                         <asp:TextBox ID="userPassword" name="password" class="input" runat="server" data-type="password" type="password"></asp:TextBox>
                    </div>
                    <div class="group">
                          <asp:Button ID="SignIN" class="button" runat="server" Text="Sign In" OnClick="SignIn_Click" />
                    </div>
                    <div class="group">
                    <asp:Label ID="Validity" runat="server"></asp:Label>
                    </div>
                    <div class="hr"></div>

                </div>

                </div>
            </div>
        </div>
    
</asp:Content>
