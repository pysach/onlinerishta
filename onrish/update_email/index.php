<?php
     include '../connection.php';
     include '../session.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Onlinerishta.in</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link href="style.css" rel="stylesheet">
</head>

<body>

<!-- Button HTML (to Trigger Modal) -->
<?php
       $tap=$_SESSION['tbl'];

       $stmt=$con->prepare("SELECT * from sd_client where tbl=:tap"); 
        
             $stmt->bindParam(':tap', $tap, PDO::PARAM_STR); 
             $stmt->execute();
             $row=$stmt->fetch(PDO::FETCH_ASSOC);
      
            if($stmt->rowCount() > 0) 
                 { 
                  if($row["sd_email"]==NULL)
                     {
?>
                        <div class="text-center">
                        <a href="#myModal" class="trigger-btn" data-toggle="modal" ><h2>YOUR EMAIL IS NOT REGISTERED WITH US</h2><br><br><hr><br><h3>CLICK HERE TO REGISTER </h3><br><hr></a>
                        <br><a href="../profile.php">Go Back</a>
                        </div>

                <?php
                }
                    elseif(($row['sd_email']!=NULL)&&($row['mail_mob']==0))
                    {
                          $_SESSION['ssmob']=$_SESSION['smob'];
                          $_SESSION['semail']=$row['sd_email'];
                    ?>    
                            <div class="text-center">
                            <a href="#myModal" class="trigger-btn" data-toggle="modal" ><h2>Please Verify Your Email Now</h2><hr><br><h3>Click Here To Verify</h3><br><hr></a>
                            <br><a href="../profile.php">Go Back</a>
                            </div>
                    
            <?php  }
                     
                     
                     elseif(($row['sd_email']!=NULL)&&($row['mail_mob']==1))
                    {
                          $_SESSION['ssmob']=$_SESSION['smob'];
                          $_SESSION['semail']=$row['sd_email'];
                    ?>    
                            <div class="text-center">
                            <a href="#myModal" class="trigger-btn" data-toggle="modal" ><h2>Edit Your Email</h3><br><hr></a>
                            <br><a href="../profile.php">Go Back</a>
                            </div>
                    
            <?php  }
                     else {  ?>    

                             <div class="text-center"><br><br>
                             <a href="" ><h2>NOW YOUR EMAIL IS UPDATED & VERIFIED</h2><br></a><br>
                             <a href="../profile.php">Go Back</a>
                             </div>

               <?php   
      	             header( "refresh:5;url=../profile.php"); 
     
                }
                     
            }
            ?>
<!-- Modal HTML -->
   <div id="myModal" class="modal fade">
	   <div class="modal-dialog modal-confirm" style="width: inherit";>
	   	   <div class="modal-content">
			      <div class="modal-header">
 				      <div class="modal-body text-center">
				            <h3>Update Your Email </h3>	
		              </div>
	     			    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		     	  </div>
      <?php
     if(isset( $_SESSION['ssmob'] )) { ?>
 			       
			        <div class="modal-body text-center" id="tap2" >
		    	      	<h3>Do you Want to Change it !</h3>	
	                      <br>
                            <div class="row no-gutters" >
                              <div class="col-md-12 form-group pl-md-1">
                                 
                              <?php
                              if(isset($_SESSION['semail'])){
                              ?>      
                                   <input type="text" class="form-control" name="mob" id="upemail" Value="<?php echo $_SESSION['semail']; ?>" placeholder="Enter Your Email.">
                              <?php    
                              }
                              else{
                               ?>   
                                  <input type="text" class="form-control" name="mob" id="upemail" placeholder="Enter Your Email.">   
                            <?php      
                              }
                              ?>
                              
                              
                              </div>
                             <div class="col-md-12 form-group btn btn-success pl-md-1"  id="show-hidden-menu">Send OTP</div>
                            </div>                              
                    </div>    
                     <br>
                           <div class=" col-md-12 text-center" id="tap" >
	                         <div class="col-md-12 form-group pl-md-1"></div>
                           </div>
                            <br>
                           <div class="col-md-12 hidden-menu"  id="tap3" style="display: none;">
                               <div class="col-md-12 form-group pl-md-1">
                                      <input type="text" class="form-control" id="otp1" placeholder="Verification Code">
                               </div>  
                                    <div class="col-md-12 form-group btn pl-md-1 text-center" id="valid">Submit OTP</div>
                                      <div class="col-md-6">
                                       <button id="btn2" class="col-md-12 form-group btn btn-success pl-md-1" value="chng" name="but2">Change Email</button>
                                       <input id="access_email" type="hidden" name="access_email" />
                                      </div>
                            
                            </div>
                          
          <?php 
        } elseif(isset($_SESSION['otp'])){ ?>

         <br>
                               <div class="col-md-12 hidden-menu text-center"  id="tap3" >
		    	             	<p>Enter Verification Code Received On Your Mail.</p>	                                   
                                    <div class="col-md-12 form-group pl-md-1">
                                      <input type="text" class="form-control text-center" id="otp1" placeholder="Verification Code">
                                    </div>  
                                    
                                    <div class=" col-md-12 text-center" >
	                                      <div class="col-md-12 form-group btn btn-success pl-md-1" id="valid">Submit OTP</div>
                                    </div>


                                         <form method="post">
                                         <button id="btn1" class="col-md-7 form-group btn btn-success pl-md-1" value="rsnd" name="but1">Resend OTP</button>
                                         <input id="access_token" type="hidden" name="access_token" />

                                         <button id="btn2" class="col-md-4 form-group btn btn-success pl-md-1" value="chng" name="but2">Change Email</button>
                                         <input id="access_email" type="hidden" name="access_email" />
                                         </form>

                              </div>
                                    

                   <?php } else{ echo "Relax You Have Already Updated Your Email !!!";} ?>

                           <br>
                                 <div class=" col-md-12 text-center" id="tap1" >
	                                      <div class="col-md-x  12 form-group pl-md-1" id="valid"></div>
                                    </div>

	      </div>
     </div>
</div>     
</body>
</html>                                                        

<script type="text/javascript">

$(document).ready(function(){  
      $('#show-hidden-menu').click(function(){
          $('.hidden-menu').slideToggle("slow");
           var u1 = $('#upemail').val();  
                    
           if(u1 != '')  
           {  
                $.ajax({  
                         url:"checkup.php",  
                         method:"POST",  
                         data: {user:u1},  
                         success:function(data)  
                         {  
                            //alert(data);
                             if(data == 'No')  
                               {  
                                alert("Something Went Wrong");     
                                }  
                           else   
                                {  
                              
                                   $('#tap2').hide();
                                   document.getElementById("tap").innerHTML=data;
                                  
                                 }  
                         }    
                  
                        });  
            }  
            else  
           {  
                alert("Please Enter Email");  
                $('#tap3').hide();
           }  
        });  
     
        $('#valid').click(function(){  
           var v1 = $('#otp1').val();  
           if(v1 != '')  
           {  
                $.ajax({  
                         url:"checkup.php",  
                         method:"POST", 
                         data: {setotp:v1},  
                         success:function(data)  
                         {  
                                   $('#tap').hide();
                                   $('#tap3').hide();
                                   document.getElementById("tap1").innerHTML=data;
                                     alert(data);
                                     location.reload();


                         }  
                  
                        });  
            }  
            else  
           {  
                alert("Please enter OTP received on your mail");  
           }  
        });  
       
       
           $("#btn1").click(function(e) {
    e.preventDefault();
    $.ajax({
        type: "POST",
        url: "checkup.php",
        data: { 
            id: $(this).val(), // < note use of 'this' here
            access_token: $("#access_token").val() 
        },
        success: function(result) {
        
          document.getElementById("tap1").innerHTML=result;
                                           
        },
        error: function(result) {
            alert('error');
        }
    });
});  


           $("#btn2").click(function(e) {
    e.preventDefault();
    $.ajax({
        type: "POST",
        url: "checkup.php",
        data: { 
            id: $(this).val(), // < note use of 'this' here
            access_email: $("#access_email").val() 
        },
        success: function(result) {
        
          document.getElementById("tap1").innerHTML=result;
                                    location.reload(); 
            
        },
        error: function(result) {
            alert('error');
        }
    });
});  



});  

</script>