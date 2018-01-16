<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSP_WebForm.aspx.cs" Inherits="Royal_Yard_V2._0.CSP_WebForm" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Royal Yard</title>

<link href="css/flex/bootstrap.css" type="text/css" rel="stylesheet" media="all"/><!-- Bootstrap stylesheet -->
<link href="css/flex/style.css" rel="stylesheet" type="text/css" media="all" /><!-- stylesheet -->
<link href="css/flex/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" /><!-- fontawesome -->  
<link href="css/flex/carousel.css" type="text/css" rel="stylesheet" media="all" /><!-- carousel css -->  
<!-- meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Estate Group Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //meta tags -->
<!--fonts-->
<link href="//fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet" />
<link href="//fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" />
<!--//fonts-->	        
<script type="text/javascript" src="js/flex/jquery-2.1.4.min.js"></script><!-- Required-js -->
<!-- requried-jsfiles-for owl -->
	<link href="css/flex/owl.carousel.css" rel="stylesheet" type="text/css" media="all" />
		 <script src="js/flex/owl.carousel.js"></script>
			<script>
			 $(document).ready(function() {
					$("#owl-demo").owlCarousel({
						 items : 4,
						 lazyLoad : true,
						 autoPlay : true,
							navigation : true,
							navigationText :  true,
							pagination : false,
							});
				});
			</script>
<!-- //requried-jsfiles-for owl -->	
<script src="js/flex/bootstrap.min.js"></script><!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
	<script type="text/javascript" src="js/flex/numscroller-1.0.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Real State, Royal Yard" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>	
<!-- font files -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" media="all" rel="stylesheet" type="text/css"/>
<link href='//fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'/>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'/>
<!-- /font files -->
<!-- css files -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/update.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/photoGallery.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/progressbar.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- /css files -->
<!-- js files -->

<!-- /js files -->




</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
    <div class="navbar-wrapper">
    <div class="container">
		<nav class="navbar navbar-inverse navbar-static-top cl-effect-21">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#home"><h1><span>R</span>oyal Yard</h1></a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/Index.aspx">Home</a></li>
						<li><a href="/AboutUs.aspx">About</a></li>
						<li><a href="/PFRWebForm.aspx">Properties For Rent</a></li>
						<li><a href="/PFSWebForm.aspx">Properties For Sale</a></li>
						<li><a href="/CSP_WebForm.aspx">Country Side Properties</a></li>
						<li><a href="/ContactUs.aspx">Contact</a></li>
					</ul>
				</div>
			</div>
        </nav>
    </div>
</div>
<!-- /navigation -->
    <!-- banner section -->
<div class='header'>
</div>
<!-- /banner section -->
<!-- properties-list -->
		<div class="properties">
			<div class="container">
                         <div class="properties-list">
					<h2>Country Side Properties</h2>
                                           <ul id="flexiselDemo3">
				<!-- slider -->
         
                <asp:Repeater runat="server" ID="CSPWebForm_Repeater">
                    <ItemTemplate>                    
								<li>
									<div class="col-md-6 agileits">
										<!-- Slider -->
										<div class="Pro-img-w3ls">		
											<img src='<%#"data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("Image")) %>' style="width:499px; height:475px;" alt="W3layouts Agileits" runat="server"/>
										    
                                        </div>
										<!-- //Slider -->								
									</div>
									<div class="col-md-6 pro-details-w3layouts">
										<h3>Property Details :</h3>	
										<label></label>
										<p class="location"><strong>Location :</strong>  '<%# Eval("location")%>'</p>
										<ol class="agileits-prolist">
											<li runat="server" style="font-weight:bold;"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Property Type: '<%# Eval("propertyType")%>'</li>
											<li runat="server" style="font-weight:bold;"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Area Size: '<%# Eval("areaSize")%>'</li>
											<li runat="server" style="font-weight:bold;"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>Demand: '<%# Eval("demand")%>' </li>
											<li runat="server" style="font-weight:bold;"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>Status: '<%# Eval("Status")%>'</li>
											<li runat="server" style="font-weight:bold;"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>Rent Or Sale: '<%# Eval("rentOrSale")%>'</li>
											<li runat="server" style="font-weight:bold;"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>Property Description: '<%# Eval("propertyDescription")%>'</li>
											<li runat="server" style="font-weight:bold;"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>Agent's Name: '<%# Eval("agentName")%>'</li>
                                            <li runat="server" style="font-weight:bold;"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>Agent's Contact Number '<%# Eval("agentContactNumber")%>'</li>
										</ol>
									</div>
								</li>		                                           
                        </ItemTemplate>
                         </asp:Repeater>
                        </ul>
                    </div>					
                </div>				
					<script type="text/javascript">
						 $(window).load(function() {
							$("#flexiselDemo3").flexisel({
								visibleItems:1,
								animationSpeed: 1000,
								autoPlay: true,
								autoPlaySpeed: 5000,    		
								pauseOnHover: true,
								enableResponsiveBreakpoints: true,
								responsiveBreakpoints: { 
									portrait: { 
										changePoint:480,
										visibleItems:1
									}, 
									landscape: { 
										changePoint:640,
										visibleItems:1
									},
									tablet: { 
										changePoint:768,
										visibleItems:1
									}
								}
							});
							
						});
					   </script>
					   <script type="text/javascript" src="js/flex/jquery.flexisel.js"></script>
					</div>   			
<!-- footer section -->
<footer class="text-center">
    <div class="footer-above">
        <div class="container">
            <div class="row">
                <div class="footer-col col-md-4">
                    <h4>Location</h4>
                    <p>Sir Syed University Of Engineering and Technology<br/></p>
                </div>
                <div class="footer-col col-md-4">
                    <h4>Around the Web</h4>
                    <ul class="list-inline">
                        <li>
                            <a href="http://ssuet.edu.pk/" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                        </li>
                        <li>
                            <a href="http://ssuet.edu.pk/" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                        </li>
                        <li>
                            <a href="http://ssuet.edu.pk/" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                        </li>
                        <li>
                            <a href="http://ssuet.edu.pk/" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                        </li>
                        <li>
                            <a href="http://ssuet.edu.pk/" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="footer-col col-md-4">
                    <h4>About Us</h4>
                    <p>
From top to bottom, Royal Yard real estate is nearly flawless. It features all of the core components needed to supply site visitors with the information they want, whether they’re just doing research or are interested in specific listings: social sharing buttons at the very bottom of the page.</p>
                </div>
            </div>
        </div>
	</div>
    <div class="footer-below">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>© 2016 RoyalYard. All Rights Reserved.</p>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- /footer section -->
<a href="#0" class="cd-top">Top</a>
<!-- js files -->
<script src="js/bootstrap.min.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<!-- js for banner section -->
<script src="js/bgfader.js"></script>
<script>
var myBgFader = $('.header').bgfader([
  'images/banner1.jpg',
  'images/banner2.jpg',
  'images/banner3.jpg',
  'images/banner4.jpg',
], {
  'timeout': 2000,
  'speed': 2000,
  'opacity': 0.4
})

myBgFader.start()
</script>
<!-- /js for banner section -->
<!-- js for gallery -->
<script type="text/javascript" src="js/photoGallery.js"></script>
<script type="text/javascript">
	$(function(){
		var photoGallery = new PhotoGallery();
	});
</script>
<!-- /js for gallery -->
<!-- js for back to top -->
<script src="js/main.js"></script> 
<!-- /js for back to top -->
<!-- js for smooth navigation -->
<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, section.our-updates a, footer a[href='#myPage']").on('click', function(event) {

  // Store hash
  var hash = this.hash;

  // Using jQuery's animate() method to add smooth page scroll
  // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
  $('html, body').animate({
    scrollTop: $(hash).offset().top
  }, 900, function(){

    // Add hash (#) to URL when done scrolling (default click behavior)
    window.location.hash = hash;
    });
  });
})
</script>
<!-- /js for smooth navigation -->
<!-- js for slide animations -->
<script>
$(window).scroll(function() {
  $(".slideanim").each(function(){
    var pos = $(this).offset().top;

    var winTop = $(window).scrollTop();
    if (pos < winTop + 600) {
      $(this).addClass("slide");
    }
  });
});
</script>
<!-- /js for slide animations -->
<!-- /js files -->

</body>
</html>
