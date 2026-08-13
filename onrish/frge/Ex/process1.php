<?php
include 'connection.php';
include 'session.php';

date_default_timezone_set("Asia/Kolkata");
$date=date("d/m/Y");
$time=date("h:i:a");

 $ip = $_SERVER['REMOTE_ADDR'];
              $geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$ip"));
                            $country = $geo["geoplugin_countryName"];
                            $city = $geo["geoplugin_city"];


if(isset($_POST['save']))
{
  $em=mysqli_real_escape_string($con,$_POST['email']);
  $mb=mysqli_real_escape_string($con,$_POST['mob']);

  $sd=mysqli_fetch_array(mysqli_query($con,"select * from sd_client where sd_email='".$em."' and sd_mobile='".$mb."' "));
  $n=$sd['sd_name'];
          
          if($sd>0)

         {
             $_SESSION['email']=mysqli_real_escape_string($con,$_POST['email']);

             $rndno=rand(100000, 999999);//OTP generate

             $message = urlencode($rndno);
             $body = nl2br("From : Onlinerishta.in\r\n \r\n If you have Requested to Reset Your Password please use this OTP or inform us at support@onlinerishta.in\r\n \r\n Your  OTP: $message "); //here  nl2br is for new line  
             $to=mysqli_real_escape_string($con,$_POST['email']);
             $subject = "Hi..".$n." "."Your Verification Code to Reset Your Password (Don't Share this OTP To Anyone )";

             $headers[] = 'MIME-Version: 1.0';
             $headers[] = 'Content-type: text/html; charset=iso-8859-1';
             $headers[] = 'From: Support@Onlinerishta.in <no-reply@Onlinerishta.in>';

             "CC: sachinatmail@gmail.com";

             mail($to,$subject,$body,implode("\r\n", $headers));

                 if(isset($_POST['save']))
                    {

                    $_SESSION['mob']=mysqli_real_escape_string($con,$_POST['mob']);
                    $_SESSION['otp']=$rndno;
    
                        header( "Location: otp.php" );
                    }
        
         }
else 
    
         {

            $to="d.sachin@live.in";
            $subject="Tried To Reset password";
            $body =  nl2br(" Email: $em\r\n Mobile: $mb\r\n Date: $date\r\n time: $time\r\n IP: $ip\r\n City: $city\r\n Country: $country "); //here  nl2br is for new line  

            $headers[] = 'MIME-Version: 1.0';
            $headers[] = 'Content-type: text/html; charset=iso-8859-1';
            $headers[] = 'From: Onlinerishta.in <no-reply@Onlinerishta.in>';

            //"CC: sachinatmail@gmail.com";

            mail($to, $subject, $body, implode("\r\n", $headers));

            header( "Location: invalid.php" );        
        
        
            /*echo '<script> alert("User Does Not Exist");window.location.href="http://onlinerishta.in/frg/" </script>';*/
        
         }
    
}

?>

