<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Royal_Yard_V2._0.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- contact section -->
<section class="contact-us slideanim" id="contact">
	<h3 class="text-center slideanim">Contact Us</h3>
	<p class="text-center slideanim">How Real Estate Gets Real</p>
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-md-7">
	
					<div class="row">
						<div class="col-sm-12 form-group slideanim">

                            <asp:TextBox class="form-control"  ID="name" runat="server" style="color:black;
  font-weight:bold;" name="name" placeholder="Name" type="text" required="required"></asp:TextBox>
						</div>
					</div>
					<div class="row email-bar">
						<div class="col-sm-12 form-group slideanim">
                            <asp:TextBox class="form-control" ID="email" runat="server" style="color:black;
  font-weight:bold;" name="email" placeholder="Email" type="email" required="required"></asp:TextBox>
						</div>
					</div>
<asp:TextBox ID="comments" TextMode="multiline" class="form-control slideanim" placeholder="Comments" Columns="50" Rows="5" style="color:black;
  font-weight:bold;" runat="server" />
<br/>
					<div class="row">
						<div class="col-sm-12 form-group slideanim">
						        <asp:Button ID="btn_Comments" runat="server" class="btn btn-outline1 btn-lg" Text="Send" OnClick="btn_Comments_Click"  type="submit" ></asp:Button>				
						</div>
					</div>
			</div>
			<div class="col-lg-5 col-md-5">
				<div class="contact-info slideanim">
					<h4>Get In Touch</h4>
					<div class="contact-details">
						<div>
							<span class="glyphicon glyphicon-phone-alt slideanim"></span>
							<p class="p1 slideanim">+92-123-1234567</p>
							<p class="p2 slideanim">+92-123-9876543</p>
						</div>
						<div>
							<span class="glyphicon glyphicon-envelope slideanim"></span>
							<p class="p1 slideanim">Email : <a href="mailto:name1@example1.com">RoyalYard@gmail.com</a></p>
							<p class="p2 slideanim">Email : <a href="mailto:name2@example2.com">RoyalYard2@gmail.com</a></p>
						</div>
					</div>	
				</div>
			</div>
		</div>
	</div>
</section>
<!-- /contact section -->
</asp:Content>
