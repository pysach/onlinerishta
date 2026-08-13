<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1334135800052707"
     crossorigin="anonymous"></script>
<style>
.banner{
	background:url(../images/marryback.jpg)no-repeat center top;
	background-size:cover;
	-webkit-background-size:cover;
	-moz-background-size:cover;
	-o-background-size:cover;
	min-height:650px;
}
.bg{
	background:url(../images/m12.jpg)no-repeat center top;
	background-size:cover;
    -webkit-background-size:cover;
    -moz-background-size:cover;
    -o-background-size:cover;
    min-height:540px;
    padding: 5em 0 0 0;
}

.navbar-inverse-blue .navbar-inner {
  padding: 0px 0;
    background: #570b2e;
  border:none;
  font-size: 0.85em;
}
.nav_bottom {
    background:#570b2e;
}
.nav .open>a, .nav .open>a:hover, .nav .open>a:focus, .nav>li>a:hover, .nav>li>a:focus{
    background-color:#b0348a2b !important;
    border-color:#ffa417;
    color:#fff !important;
}
.bg-image {
  /* Add the blur effect */
  filter: blur(7px);
  -webkit-filter: blur(7px);
  }
  </style>

<header>
     <div class="container-fluid color-header">
      <div class="">
        <div class="row">
          <div class="col-lg-3 col-6 hide-mar">
            <a href="https://onlinerishta.in/paytm/"><span class="span-size"><i class="fa fa-rupee fa-2x"></i> Pay 151 only ( Limited Time-Offer ) </span></a>
          </div>
          <div class="col-lg-7 hide-mar">
            <marquee scrollamount="6"> Welcome back..<?php echo $_SESSION['thank']?>. For New Registration Only Pay only ₹ 151 To see 3 verified and Premium Profiles contact Details </marquee>
          </div>
          <div class="col-lg-2 col-6 hide-mar">
            <a ><span class="span-size" style="float: right;"><i class="fa fa-phone fa-1x"></i>&nbsp; +91 9621001801</span></a>
          </div>
        </div>
      </div>
    </div>  
    
 <div class="navbar">
    <!--<div class="navbar navbar-inverse-blue navbar-fixed-top">-->
      <div class="navbar-inner">
        <div class="container">
           <div class="navigation">
             <nav id="colorNav">
			   <ul>
				<li class="green">
					<a href="#" class="icon-home"></a>
					<ul>
<!--						<li><a href="login.php">Login</a></li>
					    <li><a href="register.php">Register</a></li>-->
					    <li><a href="logout.php">Logout</a></li>
					</ul>
				</li>
			   </ul>
           
             </nav>
           
           </div>
           <a class="brand" href="https://onlinerishta.in/profile.php"><img src="images/logo2.png" height="50" width="200"  alt="logo"></a>

           <div class="pull-right">

          	<nav class="navbar nav_bottom" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
		  <div class="navbar-header nav_2">
		      <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">Menu
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#"></a>
		   </div> 
		   <!-- Collect the nav links, forms, and other content for toggling -->
		   
		    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
		   
		        <ul class="nav navbar-nav nav_1">
		            <li><a href="https://onlinerishta.in/profile.php">Home</a></li>
		             <?php
                      if($_SESSION["type"] =="9335994716")
                         {
                      ?>
 	                

  <li class="dropdown">
		               <a href="#" class="dropdown-toggle" data-toggle="dropdown">ADMIN<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
     		            <li><a href="https://onlinerishta.in/live">Active Users</a></li>
     		            <li><a href="https://onlinerishta.in/chat">Live Chat</a></li>
		                <li><a href="https://onlinerishta.in/adlog.php">Admin Page</a></li>
<!--		                <li><a href="https://onlinerishta.in/profile.php">Match For You</a></li>-->
		                <li><a href="https://onlinerishta.in/paytm/">Membership Plan</a></li>
		              </ul>
		            </li>


		            <?php
                      } 
		           else{  
		              ?> 
                       <li><a href="https://onlinerishta.in/about.php">About</a></li>
                          <!--<li><a href="https://onlinerishta.in/chat">Live Chat</a></li>-->
		   <?php            
		           }
		            ?>
		            
		            <li class="dropdown">
		               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Matches<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                <li><a href="newmatch.php">New Matches</a></li>
		                <!-- <li><a href="viewed-profile.html">Who Viewed my Profile</a></li> -->
		                <li><a href="https://onlinerishta.in/vanc.php">Match For You</a></li>
		                <li><a href="https://onlinerishta.in/members.php">Premium Members</a></li>
		                <li><a href="https://onlinerishta.in/shrted.php">Shortlisted Profile</a></li>
		                <li><a href="https://onlinerishta.in/div.php">Divorced Profiles</a></li>
		              <li><a href="https://onlinerishta.in/paytm/">Membership Plan</a></li>
		              </ul>
		            </li>
		            <li><a href="https://onlinerishta.in/profile.php"><?php echo "Welcome Back"."&nbsp; &nbsp;".$_SESSION['HN']; ?></a></li>
		            <li><a href="https://onlinerishta.in/logout.php">Logout</a></li>
  	

		    		


  		          <!--  <li class="dropdown">
		               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Account<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                <li><a href="login.php">Login</a></li>
		                <li><a href="profile.php">My Profile</a></li>
		                <li><a href="logout.php">Logout</a></li>

		              </ul>
		            </li>-->
		    		



					<!-- <li class="dropdown">
		              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Search<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                <li><a href="search.html">Regular Search</a></li>
		                <li><a href="profile.html">Recently Viewed Profiles</a></li>
		                <li><a href="search-id.html">Search By Profile ID</a></li>
		                <li><a href="faq.html">Faq</a></li>
		                <li><a href="shortcodes.html">Shortcodes</a></li>
		              </ul>
		            </li>
		            <li class="dropdown">
		              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Messages<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                <li><a href="inbox.html">Inbox</a></li>
		                <li><a href="inbox.html">New</a></li>
		                <li><a href="inbox.html">Accepted</a></li>
		                <li><a href="sent.html">Sent</a></li>
		                <li><a href="upgrade.html">Upgrade</a></li>
		              </ul>
		            </li>  -->
		            <li class="last"><a href="https://onlinerishta.in/cnt/">Contact-Us</a></li>
		        
		        <li class="dropdown" >
       <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="label label-pill label-danger count" style="border-radius:20px;"></span> <span class="fa fa-bell" style="font-size:18px;"></span></a>
       <ul class="dropdown-menu" id='dropdown-menu'></ul>
      </li>
		        </ul>
		     </div><!-- /.navbar-collapse -->
		    </nav>
		   </div> <!-- end pull-right -->

		   
          <div class="clearfix"> </div>
        </div> <!-- end container -->
      </div> <!-- end navbar-inner -->
    </div> <!-- end navbar-inverse-blue -->
    </header>
<!-- ============================  Navigation End ============================ -->