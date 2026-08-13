<?php 

include 'session.php';

$s=$_SESSION['i'];
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
</head>

<style>
  
  .bg-text {
 /* background-color: rgb(0,0,0);
    background-color: #55555540;*/
    background-color: transparent;
    color: #fdfcfc;
    font-weight: 100;
    font-size: x-large;
    font-style: italic;
    border: 0px solid #e62121;
    position: absolute;
    top: 40%;
    left: 50%;
    transform: translate(-50%, -50%);
    z-index: 2;
    width: 100%;
    text-align: center;
    padding: 30px;
}

    
    
</style>

<body>

<?php 
       $stmt = $con->prepare("select * from sd_client where tbl=:ss"); 
       $stmt->bindParam(':ss', $s, PDO::PARAM_INT); 
       $stmt->execute(); 
       $row = $stmt->fetch(PDO::FETCH_ASSOC);
 
 
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

<!-- ============================  Navigation Start =========================== -->
<?php include 'header.php' ?>
<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="newmatch.php"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">View Profile</li>
     </ul>
   </div>
   <div class="profile">
   	 <div class="col-md-6 profile_left" >
   	 	<h2>Profile Id : <?php echo "D".($s+786); ?></h2>
   	 	<div class="col_3">
   	        <div class="col-sm-6 row_2">
				<div class="flexslider">
					 <ul class="slides">
			<?php if($row['img1'] == NULL) { ?>
	    	       <div>
	    	       <img src="<?php echo $row['img2']; ?>" style="width:-webkit-fill-available;height:-webkit-fill-available" class="img-responsive" alt=""/>
	    	     <a href="#"> <div class="bg-text"> <p>* Ask for pic by sending interest</p> </div></a>
	    	       <hr><hr>
	               </div>
	            <?php   }  elseif($row['sd_verify']=="VERIFIED") { ?>
	    	    
	              <div >
	    	      <img src="<?php echo $row['img1']; ?>" style="width:-webkit-fill-available;height:inherit" class="img-responsive" alt=""/>
	    	      <hr><hr>
	              <div class="bg-text"> <p>Verified Member</p> </div>
                  </div>

	            <?php   }  elseif($row['sd_verify'] == "No") { ?>
	    	    
	              <div class="bg-image">
	    	      <img src="<?php echo $row['img1']; ?>" style="width:-webkit-fill-available;height:inherit" class="img-responsive" alt=""/>
	    	      <hr><hr>
	              </div>
	              
	             <?php   }  elseif($row['sd_verify'] == "Premium") { ?>
	    	    
	              <div class=" ">
	    	      <img src="<?php echo $row['img1']; ?>" style="width:-webkit-fill-available;height:inherit" class="img-responsive" alt=""/>
	              <div class="bg-text"> <p>Premium member</p> </div>
	    	      <hr><hr>
	              </div>
	              
	           <?php  }  else  {?>
	             
	             <img src="<?php echo $row['img1']; ?>" style="width:-webkit-fill-available;height:inherit" class="img-responsive" alt=""/>
	    	    
	             
               <?php } ?>


</li>
						<!-- <li data-thumb="<?php echo $row['img2']; ?>">
							<img src="<?php echo $row['img2']; ?>" style="width:220px;height:250px">
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


<div class="col-md-6 profile_right" >
<h1 style="color: steelblue;"> Contact Details </h1>

			<div class="col-sm-8 row_1">
				<table class="table_working_hours">
		        	<tbody>
		        		<tr class="opened_1">
							<td class="day_label">Name :</td>
							<td class="day_value"><?php echo $row['sd_name']; ?></td>
						</tr>

<?php  

       $stmt1 = $con->prepare("select * from sdetails where did=:sdid order by id desc"); 
       $stmt1->bindParam(':sdid', $s, PDO::PARAM_INT); 
       $stmt1->execute(); 
       $row = $stmt1->fetch(PDO::FETCH_ASSOC);
?>	
		        		<tr class="opened_1">
							<td class="day_label">Age / Height :</td>
							<td class="day_value"><?php echo $diff."yr"." / ".$row['sheight']; ?></td>
						</tr>
					    <tr class="opened">
							<td class="day_label">Color Complexion :</td>
							<td class="day_value"><?php echo $row['scolour']; ?></td>
						</tr> 
					    <tr class="opened">
							<td class="day_label">Religion :</td>
							<td class="day_value"><?php echo $rel ?></td>
						</tr>
						<tr class="opened">
							<td class="day_label">Profession :</td>
							<td class="day_value"><?php echo $row['soccupation']; ?></td>
						</tr>
						<tr class="closed">
							<td class="day_label"> <a href="https://onlinerishta.in/paytm/"> Email :</a></td>
							<td class="day_value closed"> <a href="https://onlinerishta.in/paytm/"> <span>
							    <?php $emm=str_split($em,12);
							    echo "XXX".substr($emm['0'],3)."XXX".substr($emm['1'],3); ?></a></span></td>
						</tr>
					    
					    <tr class="closed">
                            <td class="day_label"> <a href="https://onlinerishta.in/paytm/"> Mobile:</a></td>
							<td class="day_value closed">
	 <a href="https://onlinerishta.in/paytm/"> 
	                        
	                        <span><?php $mbb=str_split($mb,5);  echo substr($mbb['0'],0,2)."XXX"."XX".substr($mbb['1'],2); ?></span>
	                        
	                        </a></td>
						</tr>
									    <tr class="opened">
							<td class="day_label">Mangalik Dosh :</td>
							<td class="day_value"><?php echo $row['smangal']; ?></td>
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
					    
				    </table><br>
				    <?php if(isset($_SESSION['ii']))  {  ?>
  <a href="wait.php?ch_mail=<?php echo $_SESSION['ii'] ?>&rst=<?php echo "Hi..<br> I am also interested in your profile"; ?>"><div class="vertical">Accept</div></a>
  <a href="wait.php?ch_mail=<?php echo $_SESSION['ii'] ?>&rst=<?php echo "Hi..<br> Please Send Me More Pics"; ?>"><div class="vertical">Ask for more pics</div></a>
  <a href="wait.php?ch_mail=<?php echo $_SESSION['ii'] ?>&rst=<?php echo "Hi..<br> Sorry,"; ?>"><div class="vertical">Ignore</div></a>
 
			<?php } ?>
			</div>


<!--<h3 style="text-align:justify">&#10157; Please verify  your profile  first to access desired profile by Whatsapp /text  to 9621001801 form your registered Moble No.&#10148;<?php echo $_SESSION['mb']; ?>.</h3>
-->
<!--pay only ₹ 100 to get the verified Details/Mobile no of any two profile of your choice on below QR Payment code. And send us your payment screenshot /UPI number with date and time.   
-->
<!--<img src="img/payment.png" style="width:350px;height:500px"/>
-->

 <!--<div class="col-sm-4 row_2">
				<div class="flexslider">
					 <ul class="slides">
						<li data-thumb="<?php echo $row['img1']; ?>">
							
						</li>
						<li data-thumb="images/p2.jpg">
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
								<td class="day_value closed"><span>Doesn't matter</span></td>
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

		  <!--  <form>
			  <input type="text" name="ne" size="30" required="" placeholder="Enter Profile ID :">
			  <input type="submit" value="Go">
		   </form> -->
        </div>
       <!--  <div class="view_profile">
        	<h3>View Similar Profiles</h3>
        	<ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p5.jpg" class="img-responsive" alt=""/>
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h4>2458741</h4>
        	   	  <p>29 Yrs, 5Ft 5in Christian</p>
        	   	  <h5>View Full Profile</h5>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
           <ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p6.jpg" class="img-responsive" alt=""/>
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h4>2458741</h4>
        	   	  <p>29 Yrs, 5Ft 5in Christian</p>
        	   	  <h5>View Full Profile</h5>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
           <ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p7.jpg" class="img-responsive" alt=""/>
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h4>2458741</h4>
        	   	  <p>29 Yrs, 5Ft 5in Christian</p>
        	   	  <h5>View Full Profile</h5>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
           <ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p8.jpg" class="img-responsive" alt=""/>
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h4>2458741</h4>
        	   	  <p>29 Yrs, 5Ft 5in Christian</p>
        	   	  <h5>View Full Profile</h5>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
       </div>
       <div class="view_profile view_profile1">
        	<h3>Members who viewed this profile also viewed</h3>
        	<ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p9.jpg" class="img-responsive" alt=""/>
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h4>2458741</h4>
        	   	  <p>29 Yrs, 5Ft 5in Christian</p>
        	   	  <h5>View Full Profile</h5>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
           <ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p10.jpg" class="img-responsive" alt=""/>
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h4>2458741</h4>
        	   	  <p>29 Yrs, 5Ft 5in Christian</p>
        	   	  <h5>View Full Profile</h5>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
           <ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p11.jpg" class="img-responsive" alt=""/>
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h4>2458741</h4>
        	   	  <p>29 Yrs, 5Ft 5in Christian</p>
        	   	  <h5>View Full Profile</h5>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
           <ul class="profile_item">
        	  <a href="#">
        	   <li class="profile_item-img">
        	   	  <img src="images/p12.jpg" class="img-responsive" alt=""/>
        	   </li>
        	   <li class="profile_item-desc">
        	   	  <h4>2458741</h4>
        	   	  <p>29 Yrs, 5Ft 5in Christian</p>
        	   	  <h5>View Full Profile</h5>
        	   </li>
        	   <div class="clearfix"> </div>
        	  </a>
           </ul>
         </div>
        </div> -->
       <div class="clearfix"> </div>
    </div>
  </div>
</div>

<hr>
<?php include 'footer.php' ?>

</body>
</html>	

<script type="text/javascript">

$(document).ready(function(){
 
 function load_unseen_notification(view = '')
 {
  $.ajax({
   url:"mfetch.php",
   method:"POST",
   data:{view:view},
   dataType:"json",
   success:function(data)
   {
    $('#dropdown-menu').html(data.notification);
    if(data.unseen_notification > 0)
    {
     $('.count').html(data.unseen_notification);
    }
   }
  });
 }
 
 load_unseen_notification();
 
 
 $(document).on('click', '.dropdown-toggle', function(){
  $('.count').html('');
  load_unseen_notification('yes');
 });
 
 setInterval(function(){ 
  load_unseen_notification();; 
 }, 2000);
 
});


$(document).ready(function() {
  $('#show-hidden-menu').click(function() {
    $('.hidden-menu').slideToggle("slow");
    // Alternative animation for example
    // slideToggle("fast");
  });
});	

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

// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});


</script>

