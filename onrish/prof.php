<?php
date_default_timezone_set("Asia/Kolkata");
$date=date("d/m/y");
$time=date("h:i:a");
include 'session.php';

include 'connection.php';

$x=$_SESSION['tbl'];
$userid=$x;
 
  if (isset ($_POST['submit1']))
   {
	     $target_dir = "./img/";
		 $target_dir1 = "img/";
         $featuredimg = $target_dir . basename($_FILES["fimg"]["name"]);
	     $featuredimg1 = $target_dir1 . basename($_FILES["fimg"]["name"]);
         /* $cntentimg = $target_dir . basename($_FILES["cimg"]["name"]);
	       $cntentimg1= $target_dir1 . basename($_FILES["cimg"]["name"]);*/
	     //insert into details(id,img1,img2) values('$userid','$featuredimg1','$cntentimg1')

	     /*,img2='$cntentimg1'*//*&& move_uploaded_file($_FILES["cimg"]["tmp_name"], $cntentimg)*/
	
	     $stmt = $con->prepare("update sd_client set img1=:img where tbl=:tbid"); 
	      
	     $stmt->bindParam(':img', $featuredimg1, PDO::PARAM_STR); 
	     $stmt->bindParam(':tbid', $userid, PDO::PARAM_STR); 
         $stmt->execute(); 	   
   }
   
?>
<?php  include_once("pdo1.php");  
include_once("uploadd.php");
?>


<!DOCTYPE HTML>
<html>
<head>
<title>Onlinerishta.in</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<style>
.bg-image {
  /* Add the blur effect */
  filter: blur(9px);
  -webkit-filter: blur(9px);
  }
  
  .bg-text {
       background-color: rgb(0,0,0);
    background-color: #55555540;
    color: #fdfcfc;
    font-weight: normal;
    font-size: x-large;
    border: 0px solid #e62121;
    position: absolute;
    top: 41%;
    left: 50%;
    transform: translate(-50%, -50%);
    z-index: 2;
    width: 100%;
    text-align: center;
    padding: 10px;
}
  
</style>

</head>
<body>

<!-- ============================  Navigation Start =========================== -->
 
<?php

$stmt = $con->prepare("select * from sd_client where tbl=:img"); 
$stmt->bindParam(':img', $x, PDO::PARAM_STR); 
$stmt->execute();
$row = $stmt->fetch(PDO::FETCH_ASSOC);
//$stmt = null;
	$_SESSION['mb']=$row['sd_mobile'];
	$_SESSION['sex'] = $row['sd_sex']; 
	$_SESSION['HN']=$row['sd_name'];
 ?>
<?php include 'header.php' ?>

<!-- ============================  Navigation End ============================ -->
<div class="grid_3">
  <div class="container">
     <div class="col-sm-12"> 
      <div class="breadcrumb1 col-sm-7">
        <ul>
        <a href="index.php"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">View Profile</li>
       <li class="current-page"><h2>
    <?php
if(isset($_SESSION['email_update']))
{
    echo $_SESSION['email_update'];
?></h2></li>
      </ul>
      </div>
<div class="breadcrumb1 col-sm-5">
<form action="profile.php" Method="POST">
<input type=text name="email_update" class="form-group" placeholder="Enter your Mail ID">
<!--<input type="Submit" name="upemail" Value="Update Email" class="btn btn-primary btn-lg" style="width: 200px; background-color: #c32143;">-->
<!--<button type="button" name="upemail"  >  Update Email </button>-->
 </form>
<?php
if(isset($_POST['upemail']))
{
         $upemail=$_POST['email_update'];
         $tap=$_SESSION['tbl'];
	     $stmt = $con->prepare("UPDATE sd_client set sd_email=:ssid where tbl= :tapp"); 
	     $stmt->execute(array( ':ssid'=>$upemail,':tapp'=>$tap)); 
$stmt=null;
unset($_SESSION['email_update']);
}    
    
}
?>
</div>

 </div>

<!--   <div class="profile hidden-menu" style="display: block;">-->
   	 <div class="col-md-8 profile_left">
   	 	<h2>Your User Id : <?php echo $row['sd_mobile']; ?></h2>
   	 	<div class="col_3">
   	        <div class="col-sm-4 row_2">
				<div class="flexslider">
					 <ul class="slides">

<?php if($row['img1'] == NULL) { ?>
	    	       <div>
	    	       <img src="<?php echo $row['img2']; ?>" style="width:280px;height:380px" class="img-responsive" alt=""/>
	    	      <div class="bg-text"> <p>* Please Upload Your Photograph</p> <p>* Yet to Verify</p></div>
	    	       <hr><hr>

	               </div>


	            <?php   }  elseif($row['sd_verify']=="VERIFIED") { ?>
	    	    
	              <div >
	    	      <img src="<?php echo $row['img1']; ?>" style="width:280px;height:414px" class="img-responsive" alt=""/>
	    	      <hr><hr>
	              <div class="bg-text"> <p>Verified Member</p> </div>
                  </div>

	            <?php   }  elseif($row['sd_verify'] == "No") { ?>
	    	    
	              <div class="bg-image">
	    	      <img src="<?php echo $row['img1']; ?>" style="width:280px;height:414px" class="img-responsive" alt=""/>
	    	      <hr><hr>
	              </div>
	              
	             <?php   }  elseif($row['sd_verify'] == "Premium") { ?>
	    	    
	              <div class=" ">
	    	      <img src="<?php echo $row['img1']; ?>" style="width:280px;height:414px" class="img-responsive" alt=""/>
	              <div class="bg-text"> <p>Premium member</p> </div>
	    	      <hr><hr>
	              </div>
	              
	           <?php  }  else  {?>
	             
	             <img src="<?php echo $row['img1']; ?>" style="width:250px;height:370px" class="img-responsive" alt=""/>
	    	    
	             
               <?php } ?>


</li>
						<!-- <li data-thumb="<?php echo $row['img2']; ?>">
							<img src="<?php echo $row['img2']; ?>" style="width:220px;height:250px">
						</li> -->
						<!-- <li data-thumb="images/p3.jpg">
							<img src="images/p3.jpg" />
						</li>
						<li data-thumb="images/p4.jpg">
							<img src="images/p4.jpg" />
						</li> -->
					 </ul>
				  </div>

    </div>
    </div>
	
<?php 
    $dob=$row['sd_d']." ".$row['sd_m']." ".$row['sd_y'];
	$rel=$row['sd_religion'];

$y=$row['sd_y'];
$m=$row['sd_m'];
$d=$row['sd_d'];
$a=3;

$diff = (date('Y') - $y);
    
?>
			<div class="col-sm-8 row_1">
				<table class="table_working_hours1">
		        	<tbody>
		        		<tr class="opened_1">
     	    			    <h2>Profile Id : <?php echo "D".($x+786); ?></h2>
							<td class="day_label">NAME:</td>
							<td class="day_value"> <?php echo $row['sd_name']; ?></td>
						</tr>
				    <tr class="opened">
							<td class="day_label">D.O.B :</td>
							<td class="day_value"><?php echo $dob; ?></td>
						</tr>
					 </tbody>
			    	</table>

				<div class="form-actions">
				 	<div class="form-group has-feedback col-lg-7 col-md-4 col-sm-12 col-xs-12">
           <h3>&#10149; Step:2</h3> 
		    	<div class="form-group">
                 <form action="" method="post" enctype="multipart/form-data">
                    <input type="file" id="fimage" name="fimg">
                    <input type="submit" id="submit1" name="submit1" value="Upload Image" class="btn_1 submit">
                 </form>
 	    	<div id="show-hidden-menu">Click Me!</div> 
                </div>
                
                <div class="button" style="text-align: justify;">
<h3>&#10149; Step:3</h3>
     <button type="button" class="btn btn-primary btn-lg"  style="background-color: #c32143; "> Complete Your Profile To see Others </button>
   </div>
                
		</div>
	    </div>
			</div>

			<div class="clearfix"> </div>
		</div>
<div ><!-- pic and name column div end -->

<!--<div id="show-hidden-menu"> <button type="button" class="btn btn-primary btn-lg" > Reset </button> </div>-->

<div class="go" style="margin: 5em 0 2em 0em;">
<a href="newmatch.php"><button type="button" class="btn btn-primary btn-lg" style="width: 375px;" >  Search Profile </button></a>
</div>

<h3 style="text-align:justify">Please send us a Text-Message /Whatsapp /Call on 9621001801 form your Registered Moble No.&#10157;
<lable style="color:#ed0707;"> [* <?php echo $row['sd_mobile']; ?>  ] 
</lable>to verify your Profile which allow you to request for desired profile contact </h>



<div class="hidden-menu" style="display: none;">
 <input type="text" name="reset" class="form-group">
</div>

</div><!-- main div end -->

<br>
        
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
				    	<h1></p>
				    </div>
				    <div class="basic_1">
				    	<h3>Basics & Lifestyle</h3>
				    	<div class="col-md-6 basic_1-left">
<!--				    	    <h2>Profile Id : <?php echo "D".($x+786); ?></h2>-->
				    	  <table class="table_working_hours">
				        	<tbody>
				        		<tr class="opened_1">
									<td class="day_label">Name :</td>
									<td class="day_value"><?php echo $row['sd_name']; ?></td>
								</tr>
							  
                                 <tr class="opened_1">
									<td class="day_label">AGE :</td>
									<td class="day_value"><?php echo $diff; ?></td>
								</tr>



<?php 
$stmt = $con->prepare("select * from sdetails where did=? order by id desc"); 
$stmt->execute([$x]);
$row = $stmt->fetch(PDO::FETCH_ASSOC);
$stmt = null;
?>
							    <tr class="opened">
									<td class="day_label">Colour :</td>
									<td class="day_value"><?php echo $row['scolour']; ?></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Weight :</td>
									<td class="day_value"><?php echo $row['sweight']; ?></td>
								</tr>
                                
                                <tr class="opened">
									<td class="day_label">Height :</td>
									<td class="day_value"><?php echo $row['sheight']; ?></td>
								</tr>
							    
						    </tbody>
				          </table>
				         </div>
				         <div class="col-md-6 basic_1-left">
				          <table class="table_working_hours">
				        	<tbody>
				        		
							    <tr class="opened">
									<td class="day_label">Marital Status :</td>
									<td class="day_value"><?php echo $row['sstatus']; ?></td>
								</tr>
                                <tr class="opened">
									<td class="day_label">Body Type :</td>
									<td class="day_value"><?php echo $row['sbody']; ?></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Profile Created by :</td>
									<td class="day_value closed"><span>Self</span></td>
								</tr>
\							    <tr class="opened">
									<td class="day_label">Physical Disability :</td>
									<td class="day_value">Please Let us know if any ?</td>
								</tr> 
							    <!-- <tr class="opened">
									<td class="day_label">Blood Group :</td>
									<td class="day_value">B+</td>
								</tr> -->
							    <!-- <tr class="closed">
									<td class="day_label">Diet :</td>
									<td class="day_value closed"><span>Non-Veg</span></td>
								</tr> -->
							    <!-- <tr class="closed">
									<td class="day_label">Smoke :</td>
									<td class="day_value closed"><span>No</span></td>
								</tr> -->
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
							    <tr class="opened">
									<td class="day_label">Raasi :</td>
									<td class="day_value">We will update afetr verification<!-- <?php echo $row['srasi']; ?> --></td>
								</tr>
							 </tbody>
				          </table>
				    </div>
				         <div class="col-md-6 basic_1-left">
				          <table class="table_working_hours">
				        	<tbody>
				        		<tr class="opened">
									<td class="day_label">Time of Birth :</td>
									<td class="day_value">We will update afetr verification</td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Date of Birth :</td>
									<td class="day_value closed"><span><?php echo $dob." " ."(Hidden In profile search )"; ?></span></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Place of Birth :</td>
									<td class="day_value closed"><?php echo $row['spob']; ?></span></td>
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
									<td class="day_value">Not Updated<!-- <?php echo $row['sedudetail']; ?> --></td>
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
									<td class="day_label">Father's Name :</td>
									<td class="day_value"><?php echo $row['fname']; ?></td>
								</tr>
				        		<tr class="opened">
									<td class="day_label">Father's Occupation :</td>
									<td class="day_value"><?php echo $row['foccu']; ?></td>
								</tr>
				        		<tr class="opened">
									<td class="day_label">Mother's Occupation :</td>
									<td class="day_value"><?php echo $row['moccu']; ?></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">No. of Siblings :</td>
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
									<td class="day_value">Please Verify Your profile to let visitors know</td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Body Type :</td>
									<td class="day_value closed"><span>Not Specified</span></td>
								</tr>
							    <tr class="opened">
									<td class="day_label">Complexion :</td>
									<td class="day_value closed"><span>Fair</span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Height :</td>
									
									<td class="day_value closed"><span>Please Verify Your profile to let visitors know  </span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Diet :</td>
									<td class="day_value closed"><span>Doesn't matter</span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Kujadosham / Manglik :</td>
									<td class="day_value closed"><span><?php echo $row['smangal'] ?></span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Religion :</td>
									<td class="day_value closed"><span><?php echo $rel; ?></span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Caste :</td>
									<td class="day_value closed"><span>Not Specified</span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Mother Tongue :</td>
									<td class="day_value closed"><span>Hindi/English</span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Education :</td>
									<td class="day_value closed"><span>Please Verify Your profile to let visitors know</span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Occupation :</td>
									<td class="day_value closed"><span>Please Verify Your profile to let visitors know</span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Country of Residence :</td>
									<td class="day_value closed"><span>India</span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">State :</td>
									<td class="day_value closed"><span>Please Verify Your profile to let visitors know</span></td>
								</tr>
								<tr class="opened">
									<td class="day_label">Residency Status :</td>
									<td class="day_value closed"><span>Please Verify Your profile to let visitors know</span></td>
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
            </div>

<?php include 'footer.php'

 ?>

<!-- FlexSlider -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<!--<script src="jquery/jquery.min.js"></script>-->
<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

</body>
</html>	

<script type="text/javascript">
$(document).ready(function() {
  $('#show-hidden-menu').click(function() {
    $('.hidden-menu').slideToggle("slow");
    // Alternative animation for example
    // slideToggle("fast");
  });
});	

// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});


</script>