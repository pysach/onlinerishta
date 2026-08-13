<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Onlinerishta.in</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <!-- Template Main CSS File -->
  <link href="assets/css/style1.css" rel="stylesheet">
</head>

  <!-- ======= Header ======= -->
  <header id="header">
    <div class="container-fluid">
  <div class="logo float-left">
        <h1 class="text-light"><a href="http://onlinerishta.in/"><span>Onlinerishta.in</span></a></h1>
      </div>
      <div class="contact-link float-right">
        <a href="https://onlinerishta.in/profile.php" class="scrollto">Home Page</a>
        <a href="#" class="scrollto">Contact Us</a>
      </div>
   </div>
  </header><!-- End #header -->

<body>

<?php
if(isset($_POST['sub1'])) 

{
 include_once("../connection.php");
    session_start();
     $look = str_replace("<", "&lt;", $_POST['look']);
     $name = str_replace("<", "&lt;",  $_POST['name']);
     $address= str_replace("<", "&lt;", $_POST['add']);
     $mobile= str_replace("<", "&lt;", $_POST['mob']);
     $_SESSION['nmm']=$name;
  
 
     $date=date("d/m/Y");
     $time=date("h:i:a");
   
                            $ip = $_SERVER['REMOTE_ADDR'];
							$geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$ip"));
                            $country = $geo["geoplugin_countryName"];
                            $city = $geo["geoplugin_city"];
                            
    $data = array
    (
    ':look'   =>$look,
    ':name'  =>$name,
    ':address'=>$address,
    ':mobile'=>$mobile,
    ':date'  =>$date,
    ':time'  =>$time,
    ':ip'    =>$country." ".$city." ".$ip
    );
    
  
   
    $query = "insert into contact (lookfor,name,address,mobile,date,time,ip) Values(:look,:name,:address,:mobile,:date,:time,:ip)";
    $sta = $con->prepare($query);
   
   
    if ( $sta->execute($data)) {
    
$to  = 'help@onlinerishta.in,';
$subject="Contact-Us"."-".$look;
$body =  nl2br(" Visitor: $name\r\n Mobile: $mobile\r\n Address: $address\r\n IP: $ip\r\n City: $city\r\n Country: $country "); //here  nl2br is for new line  

      $headers[] = 'MIME-Version: 1.0';
      $headers[] = 'Content-type: text/html; charset=iso-8859-1';
      $headers[] = 'From: Onlinerishta.in <no-reply@onlinerishta>';
      
if (mail($to, $subject, $body, implode("\r\n", $headers))) 

{
   echo(" ");
} 


      echo '<script>window.location="thankyou.php"</script>';
    }
    else
        { 
        echo '<script>window.location="https://www.onlinerishta.in/register.php"</script>';
        }
}
?>


  <!-- ======= Hero Section ======= -->
 <section id="hero">
   <div class="hero-container">

      <h1>Contact-Us  </h1>
      <!--<div class="countdown" data-count="2020/04/18" data-template="%w weeks %d days <br> %H:%M:%S Hours"></div>-->
      <form action="" method="post">
        <div class="row no-gutters">
          
           <div class="col-md-12 form-group pr-md-1">
              <select name="look" value="" required="" class="form-control"> 
              <option value="">Looking For</option>
	          <option value="Registration">Registration</option>
	          <option value="Matrimonial Membership">Matrimonial Membership</option>
	          <option value="Website Developement">Website Developement</option>          
	          <option value="Feedback">Feedback</option>
              </select>
            <div class="validate"></div>
            </div>
          
          
          <div class="col-md-4 form-group pr-md-1">
            <input type="text" name="name" class="form-control" id="name" placeholder="Please Enter Your Name" required="" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
            <div class="validate"></div>
          </div>
          <div class="col-md-4 form-group pl-md-1">
            <input type="text" class="form-control" name="add" id="add" placeholder="Your City/Town" data-rule="minlen:4" data-msg="Please enter Your City" />
            <div class="validate"></div>
          </div>
         
         <div class="col-md-4 form-group pl-md-1">
            <input type="text" class="form-control" name="mob" id="mob" placeholder="Your Mobile No." required="" data-rule="minlen:10" data-msg="Please enter a valid email" />
            <div class="validate"></div>
          </div>
          
          
        </div>
<!-- <div class="mb-1">
          <div class="loading">Loading</div>
          <div class="error-message"></div>
          <div class="sent-message">Your notification request was sent. Thank you!</div>
     </div>-->
            <div class="text-center"><button type="submit" class="form-control" name="sub1">Contact Us</button></div>
      </form>
    </div>
  </section><!-- End Hero -->


  <main id="main">
    <!-- ======= Contact Us Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2>Contact Us</h2>
        </div>

        <div class="row contact-info">

          <div class="col-md-4">
            <div class="contact-address">
              <i class="fa fa-map-marker" aria-hidden="true"></i>
              <h3>Address</h3>
              <address>Head Office:- Nirman Vihar<br> East Delhi 110092</address>
              
            </div>
          </div>

          <div class="col-md-4">
            <div class="contact-phone">
            <i class="fa fa-phone" aria-hidden="true"></i>
            <h3>Conatact Us</h3>
              <p><a href="tel:+919807719509">+919621001801</a></p>
              <address>Local Branch:-Varanasi,Kushinagar</address>
            </div>
          </div>

          <div class="col-md-4">
            <div class="contact-email">
              <i class="fa fa-envelope" aria-hidden="true"></i>
              <h3>Email</h3>
              <p><a href="mailto:help@onlinerishta.in">help@onlinerishta.in</a></p>
            </div>
          </div>
        </div>
      </div>

    </section><!-- End Contact Us Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        <!--&copy; Copyright <?php echo date('Y');?>--> <strong><span>Onlinerishta.in</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
      
        <p> Design  & Developed by <a href="https://onlinerishta.in/cnt/">Sachin Gupta</a> </p>
      </div>
    </div>
 </footer><!-- End #footer -->

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/jquery-countdown/jquery.countdown.min.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
<!-- Load Validation JS -->
   <script type="text/javascript" src="bs4-form-validation.js"></script>
    <script type="text/javascript">

setInterval(function(){ 
  update_last_activity();
 }, 2000);
 
	function update_last_activity()
	{
		$.ajax({
			url:"../chat/update_last_activity.php",
			success:function()
			{
			}
		})
	}


        let form = new Validation("test-form");
        // Validation Functions
       form.requireText("", 4, 20, [" "], []);
        form.requireEmail("", 4, 30, [" "], []);
        form.registerPassword("", 9, 11, [" "], []);
 
   

$(document).ready(function(){  
      $('#sdd').click(function(){  
           var u1 = $('#pass1').val();  
           var p1 = $('#pass2').val();  
           if(u1 != '' && p1 != '')  
           {  
                $.ajax({  
                     url:"action.php",  
                     method:"POST",  
                     data: {user:u1, pass:p1},  
                     success:function(data)  
                     {  
                          //alert(data);  
                          if(data == 'No')  
                          {  
                               alert("Wrong Data");  
                          }  
                          else  
                          {  
                               $('#loginModal').hide();  
                               window.location = 'successful.php';
                               //location.reload(); 
                               
                          }  
                     }  
                });  
           }  
           else  
           {  
                alert("Both Fields are required");  
           }  
      });  
     
 });  


  
   
    </script>

</body>
</html>













