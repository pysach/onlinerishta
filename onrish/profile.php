<?php
include 'session.php';

$x=$_SESSION['tbl'];
$userid=$x;
include_once("pdo1.php");  
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
<link href="css/style.css" rel='stylesheet' type='text/css' />
<style>
.bg-image {
  /* Add the blur effect */
  filter: blur(5px);
  -webkit-filter: blur(5px);
  }
    .bg-text {
/*    background-color: rgb(0,0,0);
    background-color: #55555540;*/
    background-color: transparent;
    color: #fdfcfc;
    font-weight: normal;
    font-size: x-large;
    border: 0px solid #a2a2a2;
    position: absolute;
    top: 35%;
    left: 50%;
    /* transform: translate(-50%, -50%); */
    z-index: 2;
    width:100%;
    text-align: center;
    padding: 25px;
}


.blink_me {
  animation: blinker 1s linear infinite;
  color: white;
}

@keyframes blinker {
  50% {
    opacity: 0;
  }
}


.overlay {
  position: fixed;
  inset: 0;
  background: rgba(0,0,0,0.6);
  display: none;
  z-index: 9999;
}

.popup {
  background: #6f2dbd;
  color: #fff;
  width: 100%;
  height: 100%;
  padding: 40px 25px;
  position: relative;
  text-align: center;
  animation: slideUp 0.4s ease;
  font-family: Arial, sans-serif;
}

/* Desktop view */
@media (min-width: 768px) {
  .popup {
    width: 450px;
    height: auto;
    border-radius: 14px;
    margin: auto;
    top: 50%;
    transform: translateY(-50%);
    box-shadow: 0 20px 50px rgba(0,0,0,0.4);
  }
}

.popup h2 {
  margin-top: 40px;
  font-size: 28px;
}

.popup p {
  font-size: 17px;
  margin: 20px 0 30px;
}

.popup button {
  background: #fff;
  color: #6f2dbd;
  border: none;
  padding: 14px 26px;
  font-size: 17px;
  border-radius: 8px;
  cursor: pointer;
}

.close-btn {
  position: absolute;
  top: 15px;
  right: 20px;
  font-size: 24px;
  cursor: pointer;
}

@keyframes slideUp {
  from { transform: translateY(40px); opacity: 0; }
  to   { transform: translateY(0); opacity: 1; }
}

</style>
</head>
<body>

<!-- ============================  Navigation Start =========================== -->
 
<?php
$stmt = $con->prepare("select * from sd_client where tbl=?"); 
$stmt->execute([$x]);
$row = $stmt->fetch(PDO::FETCH_ASSOC);
//$stmt = null;
	$_SESSION['mb']=$row['sd_mobile'];
	$_SESSION['sex'] = $row['sd_sex']; 
	$_SESSION['HN']=$row['sd_name'];
	$_SESSION['sd_rel'] =$row['sd_religion'];
 ?>
<?php include 'header.php' ?>

<!-- ============================  Navigation End ============================ -->




<div class="grid_3">
      <div class="container">
            <div class="breadcrumb1">
             <ul>
               <a href="index.php"><i class="fa fa-home home_1"></i></a>
               <span class="divider">&nbsp;|&nbsp;</span>
               <li class="current-page">View Profile</li>
             </ul>
           </div>

     	     <div class="col-md-8 profile_left">
    	    	<h2>Your User Id : <?php echo $row['sd_mobile']; ?></h2>
   	 	    	<div class="col_3">
   	              <div class="col-sm-4 row_2">
	<div id="bunty" class="flexslider">
					 <ul class="slides">
					
	                 <?php if($row['img1'] == NULL) { ?>
	         	      <div id="loader-icon" ><img src="loader.gif" /></div>
	         	      <div>
	           	       <img src="<?php echo $row['img2']; ?>" style="width:100%;height:100%" class="img-thumbnail" alt=""/>
     	        	      <div class="bg-text"> <p c>* Please Upload Your Photograph</p> <p>* Yet to Verify</p></div><hr><hr>
    	               </div>
                 
                     <?php   }  elseif($row['sd_verify']=="VERIFIED") { ?>
	    	       <div>
	    	       <img src="<?php echo $row['img1']; ?>" style="width:100%, height:100%" class="img-thumbnail" alt=""/>
	    	       <hr><hr>
	               <!--<div class="bg-text"> <p>Verified Profile</p> </div>-->
                   </div>
<div class="bg-text"> <p>Verified Profile</p> </div>
	            <?php   }  elseif($row['sd_verify'] == "No") { ?>
	    	     <div class="bg-image">
	    	      <img src="<?php echo $row['img1']; ?>" style="width:100% ,height:100%" class="img-thumbnail" alt=""/>
	    	      <hr><hr>
	              </div>
	              <div class="bg-text"> <p>Your profile is yet to be verified by Admin.</p> </div>  
	             
	             <?php   }  elseif($row['sd_verify'] == "Premium") { ?>
	    	    <div class=" ">
	    	      <img src="<?php echo $row['img1']; ?>" style="width:, height:100%" class="img-thumbnail" alt=""/>
	              <div class="bg-text"> <p>Premium member</p> </div>
	    	      <hr><hr>
	              </div>
	           
	           <?php  }  else  {?>
	             <img src="<?php echo $row['img1']; ?>" style="width:100% ;height:100%" class="img-thumbnail" alt=""/>
               <div class="bg-text"> <p>you can also hide your pic after uploading your pic</p> </div>
	    	      <hr><hr>
               
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
							<td class="day_label">Email :</td>
							<td class="day_value"><?php 
							if($row['sd_email']==NULL) 
							{
							?> 
							<div id="overlay" class="overlay">
  <div class="popup">
    <span class="close-btn" onclick="closePopup()">✖</span>
    <h2>Update Your Email</h2>
    <p>Please update your email address to keep your account secure.</p>
    <button onclick="updateEmail()">Update Email</button>
  </div>
</div>
							
							<a href="wait.php?ch_mail=<?php echo $row['tbl']?>">Please Update Email</a>
							                            <img src="loader.gif" width="30%" />
						
						    <?php
                            }
                            elseif(($row['sd_email']!=NULL)&&($row['mail_mob']==0)){
                            ?>    
                            

                                
                              <?php echo $row['sd_email'];?> <a href="https://onlinerishta.in/update_email"> &nbsp;&nbsp;  Verify Now</a>
                        				
    						
							
							
							<?php  
							}

							?>
							<?php echo $row['sd_email'];?> <a href="https://onlinerishta.in/update_email"> &nbsp;&nbsp;  Edit</a>
							</td>
						</tr>
					 </tbody>
			    	</table>

				<div class="form-actions">
				 	<div class="form-group has-feedback col-lg-7 col-md-4 col-sm-12 col-xs-12">
           
           <h3>&#10149; Step:2 <?php if($row['img1'] == NULL){?><img src="loader.gif" width="30%" /><?php } ?></h3>
<!--<p>&#10149; YOU CAN HIDE YOUR PIC ALSO</p>-->
		    	<div class="form-group">

<form id="uploadImage"  method="POST" action="upload.php"  enctype="multipart/form-data">
			<div id="idd">
				<input type="file" id="uploadFile" name="imageupload"  accept="image/png, image/jpg, image/jpeg" > <!--accept="image/*"-->
				<h4>Please Select Your Pic</h4> 
				
			</div>
		    <div class="progress">
				<div class="progress-bar progress-bar-info newrole" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"> </div>
			</div>
		
		<div id="idd1">
				
					<input type="submit" id="uploadSubmit" name = "uploadSubmit" value="Upload Now">
			</div>
		
						<div id="targetLayer" style="display:none;"></div>
					</form>
					<div id="loader-icon" style="display:none;"><img src="loader.gif" /></div>


                 <div class="btn_1 submit"  > <a href="wait.php?nvrf=<?php echo $row['tbl']?>" style=" color: #f4f7fb; text-decoration: none;" >HIDE PIC</a></div>
                 <div class="btn_1 submit"  > <a href="wait.php?pvrf=<?php echo $row['tbl']?>" style=" color: #f4f7fb; text-decoration: none;" >Show PIC</a></div>

    </div>
                
                <div class="button" style="text-align: justify;">

<?php 
$stmt1 = $con->prepare("select * from sdetails where did=? order by id desc"); 
$stmt1->execute([$x]);
$row1 = $stmt1->fetch(PDO::FETCH_ASSOC);
//$_SESSION['doiv']=$row1['sstatus'];
?>

<h3>&#10149; Step:3<?php if($row1['fname']== NULL or $row1['scast']== NULL or $row1['sbcast']== NULL or $row1['soccupation'] == NULL){?><img src="loader.gif" width="30%" /><?php } ?></h3>
     <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="background-color: #c32143; "> Complete Your Profile To see Others </button>

</div>
                
		</div>
	    </div>
			</div>

			<div class="clearfix"> </div>
		</div>
<div >
    <!-- pic and name column div end -->

 <!--<button type="button" class="btn btn-primary" id="show-hidden-menu" > Reset </button> 
<div class="hidden-menu" style="display: none;">
 <input type="text" name="reset" class="form-group">
</div>-->

<?php
$stm = $con->prepare("select * from paytm where user_id=?"); 
$stm->execute([$x]);
$row22 = $stm->fetch(PDO::FETCH_ASSOC);
if($row22)
{
    
    
?>
    <div class="go" style="margin: 5em 0 2em 0em;">
<a href="members.php"><button type="button" class="btn btn-primary btn-lg" style="width: 375px;" >  <?php  echo $row22['product_info']; ?> </button></a>
<lable >Please call or whatsapp On 9621001801 For Help</lable>
</div>

<div class="go" style="margin: 5em 0 2em 0em;">
<a href="newmatch.php"><button type="button" class="btn btn-primary btn-lg" style="width: 375px;" >  <blink  class="blink_me">Search Profile </blink></button></a>
</div>



<!--<div class="go" style="margin: 5em 0 2em 0em;">
<a href="/chat"><button type="button" class="btn btn-primary btn-lg" style="width: 375px;" > Live Chat <small>New Feature<small> </button></a>
</div>
-->

 <?php   
}
elseif((!$row1) or ($row1['sstatus']== "Never Married") ) {
?>
<div class="go" style="margin: 2.5em 0 2em 0em;">
<a href="newmatch.php"><button type="button" class="btn btn-primary btn-lg" style="width: 375px;" >  Search Profile </button></a>
</div>

<h3 style="text-align:justify">Please send us a Text-Message /Whatsapp /Call on 9621001801 form your Registered Moble No.&#10157;<lable style="color:#ed0707;"> [* <?php echo $row['sd_mobile']; ?>  ] </lable>to verify your Profile which allow you to request for desired profile contact </h>

<?php
}
else{
?>

<div class="go" style="margin: 2.5em 0 2em 0em;">
<a href="newmatch.php"><button type="button" class="btn btn-primary btn-lg" style="width: 375px;" >All Profiles </button></a>
</div>
<div class="go" style="margin: 2.5em 0 2em 0em;">
<a href="div.php"><button type="button" class="btn btn-primary btn-lg" style="width: 375px;" > <?php echo $row1['sstatus']; ?></button></a>
</div>

<h3 style="text-align:justify">For Exclusive Divorced Profile Matching Call on 9621001801 form your Registered Moble No.&#10157;<lable style="color:#ed0707;"> [* <?php echo $row['sd_mobile']; ?>  ] </lable></h>

<?php } ?>




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

							    <tr class="opened">
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

<?php include 'footer.php'   ?>

         <script src="js/bootstrap.min.js"></script>
		 <script src="js/jquery.min.js"></script>
		 <script src="js/jquery.form.js"></script>

<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
</body>
</html>	

<script type="text/javascript">

setInterval(function(){ 
  update_last_activity();
 }, 2000);
 
	function update_last_activity()
	{
		$.ajax({
			url:"chat/update_last_activity.php",
			success:function()
			{
			}
		})
	}

$(document).ready(function(){
	$('#uploadImage').submit(function(event){
		$("#uploadSubmit").prop('disabled', true);
		if($('#uploadFile').val())
		{
			
			event.preventDefault();
			$('#loader-icon').show();
			$('#targetLayer').hide();
			
			$(this).ajaxSubmit({
				target: '#targetLayer',
				beforeSubmit:function(){
					$('.progress-bar').width('0%');
				 
				},
				uploadProgress: function(event, position, total,percentageComplete)
				{
			    	$('.progress-bar').animate({
						width: percentageComplete + '%'
					}, {
						duration: 1000
					});
				   	
				},
				success:function(){
					//$('#idd').hide();
					$('#loader-icon').hide();
					$('#targetLayer').show();
					$("#uploadSubmit").prop('disabled', false);
				//	location.reload();
					$("#bunty").load(" #bunty");
					$('#idd').hide(); 
					$('#idd1').hide(); 
										
					resetForm: true
				},
				
			});
		}
		return false;
	
	});
	
});




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
  load_unseen_notification(); 
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


 $("#btn1").click(function(e) {
    e.preventDefault();
    $.ajax({
        type: "POST",
        url: "popedit.php",
        data: { 
            id: $(this).val(), // < note use of 'this' here
            access_token: $("#access_token").val() 
        },
        success: function(result) {
        
          document.getElementById("dictt").innerHTML=result;
                                 },
        error: function(result) {
            alert('error');
        }
    });
});  

/*online status*/
$(document).ready(function(){
<?php
if($_SESSION["type"] !== "9335994716")
{
?>
function update_user_activity()
{
 var action = 'update_time';
 $.ajax({
  url:"live.php",
  method:"POST",
  data:{action:action},
  success:function(data)
  {

  }
 });
}
setInterval(function(){ 
 update_user_activity();
}, 3000);


<?php
}
else
{
?>
fetch_user_login_data();
setInterval(function(){
 fetch_user_login_data();
}, 3000);
function fetch_user_login_data()
{
 var action = "fetch_data";
 $.ajax({
  url:"live.php",
  method:"POST",
  data:{action:action},
  success:function(data)
  {
   $('#user_login_status').html(data);
  }
 });
}
<?php
}
?>

});

 // Show popup on page load
  window.onload = function () {
    document.getElementById("overlay").style.display = "block";
  };

  function closePopup() {
    document.getElementById("overlay").style.display = "none";
  }

  function updateEmail() {
    window.location.href = "update_email"; // change link
  }

</script>