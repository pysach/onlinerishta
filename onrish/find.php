<?php


include 'session.php';
if(isset($_POST['search']))
{

include 'connection.php';

$sid=substr($_POST['sid'],1)-786;

$row = mysqli_fetch_array(mysqli_query($con,"select * from sd_client where tbl=$sid"));

if($row)
{

 

 	
 $profile=$row['look'];
 $em=$row['sd_email'];
 $mb=$row['sd_mobile'];
    $dob="XX"." ".$row['sd_m']." ".$row['sd_y'];
	$rel=$row['sd_religion'];
$y=$row['sd_y'];
$n=$row['sd_name'];
$a=3;
$diff = (date('Y') - $y);

?>


<!DOCTYPE HTML>
<html>
<head>
<title>Onlinerishta.in</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content=" " />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Oswald:300,400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Ubuntu:300,400,500,700' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
</head>
<body>

<!-- ============================  Navigation Start =========================== -->
<?php include 'header.php' ?>
<div class="grid_3">
  <div class="container">
   <div class="breadcrumb11">
     <ul>
        <a href="index.php"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">View Profile</li>
     </ul>
   </div>
   <div class="profile">
   	 <div class="col-md-5 profile_left">
   	 	<h2>Profile Id : <?php echo $_POST['sid']; ?></h2>
   	 	<div class="col_3">
   	        <div class="col-sm-4 row_2">
				<div class="flexslider">
					 <ul class="slides">
						<!--<li data-thumb="<?php echo $row['img1']; ?>">-->
							<img src="<?php echo $row['img1']; ?>" style="width:280px;height:410px" />
						</li>
					<!-- 	<li data-thumb="images/p2.jpg">
							<img src="images/p2.jpg" />
						</li>
						<li data-thumb="images/p3.jpg">
							<img src="images/p3.jpg" />
						</li>
						<li data-thumb="images/p4.jpg">
							<img src="images/p4.jpg" />
						</li> -->
					 </ul>
				  </div>
			</div>
		
			 </div>
		</div>


<div class="col-md-7 profile_right " style="margin: 5em 0 2em 0em;">
<h1 style="color: steelblue;"> Contact Details </h1>

	<div class="col-sm-8 row_1">
				<table class="table_working_hours">
		        	<tbody>
		        		<tr class="opened_1">
							<td class="day_label">Name :</td>
							<td class="day_value"><?php echo $row['sd_name']; ?></td>
						</tr>

<?php $row = mysqli_fetch_array(mysqli_query($con,"select * from sdetails where did=$sid order by id desc")); ?>	
		        		<tr class="opened_1">
							<td class="day_label">Age / Height :</td>
							<td class="day_value"><?php echo $diff."yr"." / ".$row['sheight']; ?></td>
						</tr>
					    <!-- <tr class="opened">
							<td class="day_label">Last Login :</td>
							<td class="day_value">4 hours ago</td>
						</tr> -->
					    <tr class="opened">
							<td class="day_label">Religion :</td>
							<td class="day_value"><?php echo $rel?></td>
						</tr>
						<tr class="closed">
							<td class="day_label">Email :</td>
							<td class="day_value closed"><span>
							    <?php $emm=str_split($em,12);
							    echo "XXX".substr($emm['0'],3)."XXX".substr($emm['1'],3); ?></span></td>
						</tr>
					    <tr class="closed">
							<td class="day_label">Mobile:</td>
							<td class="day_value closed">
			                <span><?php $mbb=str_split($mb,5); 
							echo substr($mbb['0'],0,2)."XXX"."XX".substr($mbb['1'],2); ?></span></td>
						</tr>
					    <tr class="opened">
							<td class="day_label">Marital Status :</td>
							<td class="day_value"><?php echo $row['sstatus']; ?></td>
						</tr>
					    <tr class="opened">
							<td class="day_label">Location :</td>
							<td class="day_value">India</td>
						</tr>
					    <tr class="closed">
							<td class="day_label">Profile Created by :</td>
							<td class="day_value closed"><span><?php echo $profile; ?></span></td>
						</tr>
					    
				    </table>
				
			</div>



<!--<h3 style="text-align:justify">&#10157; Please verify  your profile  first to access desired profile by Whatsapp /text  to 9621001801 form your registered Moble No.&#10148;<?php echo $_SESSION['mb']; ?>.</h3>-->
<!--pay only ₹ 100 to get the verified Details/Mobile no of any two profile of your choice on below QR Payment code. And send us your payment screenshot /UPI number with date and time.   
-->
<!--<img src="img/payment.png" style="width:350px;height:500px"/>
-->

 <!--<div class="col-sm-4 row_2">
				<div class="flexslider">
					 <ul class="slides">
						<li data-thumb="<?php echo $row['img1']; ?>">
							
						</li>
					<!-- 	<li data-thumb="images/p2.jpg">
							<img src="images/p2.jpg" />
						</li>
						<li data-thumb="images/p3.jpg">
							<img src="images/p3.jpg" />
						</li>
						<li data-thumb="images/p4.jpg">
							<img src="images/p4.jpg" />
						</li>
					 </ul>
				  </div>
			</div>-->


</div>

<div class="clearfix"> </div>

<br><br><br>	

		<div class="col_4">
		    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
			   <ul id="myTab" class="nav nav-tabs nav-tabs1" role="tablist">
				  <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">About Myself</a></li>
				  <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Family Details</a></li>
				  <li role="presentation"><a href="#profile1" role="tab" id="profile-tab1" data-toggle="tab" aria-controls="profile1">Partner Preference</a></li>
			   </ul>
			   <div id="myTabContent" class="tab-content">
				  <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
				    <div class="tab_box">
				    	<h1>Detailed History</p>
				    </div>
				    <div class="basic_1">
				    	<h3>Basics & Lifestyle</h3>
				    	<div class="col-md-6 basic_1-left">
				    	  <table class="table_working_hours">
				        	<tbody>
				        		<tr class="opened_1">
									<td class="day_label">Name :</td>
									<td class="day_value"><?php echo $n; ?></td>
								</tr>
								<tr class="opened_1">
									<td class="day_label">Age :</td>
									<td class="day_value"><?php echo $diff; ?></td>
								</tr>
							    
							    <tr class="opened">
									<td class="day_label">Weight :</td>
									<td class="day_value"><?php echo $row['sweight']; ?></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Height :</td>
									<td class="day_value"><?php echo $row['sheight']; ?></td>
								</tr>
                                <tr class="opened">
									<td class="day_label">Color Complexion :</td>
									<td class="day_value"><?php echo $row['scolour']; ?></td>
								</tr>
								
							    <tr class="opened">
									<td class="day_label">Body Type :</td>
									<td class="day_value"><?php echo $row['sbody']; ?></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Marital Status :</td>
									<td class="day_value"><?php echo $row['sstatus']; ?></td>
								</tr>
								
		
						    </tbody>
				          </table>
				         </div>
				         <div class="col-md-6 basic_1-left">
				          <table class="table_working_hours">
				        	<tbody>
				        	    <tr class="opened">
									<td class="day_label">Mother Tongue :</td>
									<td class="day_value">Hindi</td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Physical Status :</td>
									<td class="day_value closed"><span>Not Specified</span></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Profile Created by :</td>
									<td class="day_value closed"><span>Self</span></td>
								</tr>
								
								
							    
							    <tr class="opened">
									<td class="day_label">Blood Group :</td>
									<td class="day_value">Unspecified</td>
								</tr>
							    <tr class="closed">
									<td class="day_label">Diet :</td>
									<td class="day_value closed"><span>Unknown</span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Drink :</td>
									<td class="day_value closed"><span>Not Mentioned</span></td>
								</tr>
							    <tr class="closed">
									<td class="day_label">Smoke :</td>
									<td class="day_value closed"><span>Not Mentioned</span></td>
								</tr>
						    </tbody>
				        </table>
				        </div>
				        <div class="clearfix"> </div>
				    </div>
				    <div class="basic_1">
				    	<h3>Religious / Social & Astro Background</h3>
				    	<div class="col-md-6 basic_1-left">
				    	  <table class="table_working_hours">
				        	<tbody>
				        	<tr class="opened">
									<td class="day_label">Date of Birth :</td>
									<td class="day_value closed"><span><?php echo $dob; ?></span></td>
								</tr>

				        		<tr class="opened">
									<td class="day_label">Time of Birth :</td>
									<td class="day_value">ASK</td>
								</tr>
				        	

							    <tr class="opened">
									<td class="day_label">Place of Birth :</td>
									<td class="day_value closed"><span><?php echo $row['spob']; ?></span></td>
								</tr>





							 </tbody>
				          </table>
				         </div>
				         <div class="col-md-6 basic_1-left">
				          <table class="table_working_hours">
				        	<tbody>
				        	
	                        
	                            <tr class="opened_1">
									<td class="day_label">Religion :</td>
									<td class="day_value"><?php echo $rel; ?></td>
								</tr>

	                                <tr class="opened">
									<td class="day_label">Caste :</td>
									<td class="day_value"><?php echo $row['scast']; ?></td>
								</tr>

				        	
							    <tr class="opened">
									<td class="day_label">Sub Caste :</td>
									<td class="day_value"><?php echo $row['sbcast']; ?></td>
								</tr>
							    
							</tbody>
				        </table>
				        </div>
				        <div class="clearfix"> </div>
				    </div>
				    <div class="basic_1 basic_2">
				    	<h3>Education & Career</h3>
				    	<div class="basic_1-left">
				    	  <table class="table_working_hours">
				        	<tbody>
				        		<tr class="opened">
									<td class="day_label">Education   :</td>
									<td class="day_value"><?php echo $row['sedu']; ?></td>
								</tr>
				        		<tr class="opened">
									<td class="day_label">Education Detail :</td>
									<td class="day_value"><?php echo $row['sedudetail']; ?></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Occupation Detail :</td>
									<td class="day_value closed"><span><?php echo $row['soccupation']; ?></span></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Annual Income :</td>
									<td class="day_value closed"><span><?php echo $row['sincome']; ?></span></td>
								</tr>
							 </tbody>
				          </table>
				         </div>
				         <div class="clearfix"> </div>
				    </div>
				  </div>
				  <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
				    <div class="basic_3">
				    	<h4>Family Details</h4>
				    	<div class="basic_1 basic_2">
				    	<h3>Basics</h3>
				    	<div class="col-md-6 basic_1-left">
				    	  <table class="table_working_hours">
				        	<tbody>
				        		<tr class="opened">
									<td class="day_label">Father's Occupation :</td>
									<td class="day_value"><?php echo $row['foccu']; ?></td>
								</tr>
				        		<tr class="opened">
									<td class="day_label">Mother's Occupation :</td>
									<td class="day_value"><?php echo $row['moccu']; ?></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">No. of siblings :</td>
									<td class="day_value closed"><span><?php echo $row['bs']; ?></span></td>
								</tr>
							    <!-- <tr class="opened">
									<td class="day_label">No. of Sisters :</td>
									<td class="day_value closed"><span>Not Specified</span></td>
								</tr> -->
							 </tbody>
				          </table>
				         </div>
				       </div>
				    </div>
				 </div>
				 <div role="tabpanel" class="tab-pane fade" id="profile1" aria-labelledby="profile-tab1">
				    <div class="basic_1 basic_2">
				       <div class="basic_1-left">
				    	  <table class="table_working_hours">
				        	<tbody>
				        		<tr class="opened">
									<td class="day_label">Age   :</td>
									<td class="day_value"><?php echo ($diff-$a)." TO ".$diff; ?></td>
								</tr>
				        		<tr class="opened">
									<td class="day_label">Marital Status :</td>
									<td class="day_value"><?php echo $row['sstatus']; ?></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Body Type :</td>
									<td class="day_value closed"><span><?php echo $row['sbody']; ?></span></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Complexion :</td>
								<td class="day_value closed"><span><?php echo $row['scolour']; ?></span></td>
								</tr>
								<tr class="opened">
								<td class="day_label">Height :</td>
								<td class="day_value closed"><span><?php echo "less than"." ".$row['sheight']; ?></span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Diet :</td>
									<td class="day_value closed"><span>Doesn't matter</span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Kujadosham / Manglik :</td>
									<td class="day_value closed"><span>Ask</span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Religion :</td>
									<td class="day_value closed"><span><?php echo $rel; ?></span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Caste :</td>
									<td class="day_value closed"><span><?php echo $row['scast']; ?></span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Mother Tongue :</td>
									<td class="day_value closed"><span>HINDI/ENGLISH</span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Education :</td>
									<td class="day_value closed"><span>Doesn't matter</span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Occupation :</td>
									<td class="day_value closed"><span>Doesn't matter</span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Country of Residence :</td>
									<td class="day_value closed"><span>Doesn't matter</span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">State :</td>
									<td class="day_value closed"><span>Doesn't matter</span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Residency Status :</td>
									<td class="day_value closed"><span>Doesn't matter</span></td>
								</tr>
							 </tbody>
				          </table>
				        </div>
				     </div>
				 </div>
		     </div>
		  </div>
	   </div>
   	 </div>
     <div class="col-md-4 profile_right">
     	<div class="newsletter">

<!--  search profile  -->



        </div>
     
       <div class="clearfix"> </div>
    </div>
  </div>
</div>
<hr>
<?php include 'footer.php' ?>
<!-- FlexSlider -->
<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>   
</body>
</html>	
<?php




}
else
{
echo '<script>alert("Invalid User ID");window.location.href="members.php"</script>';    
    
}

}

?>

