<?php
include '../connection.php';
//ob_start();
include 'session.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require "../PHPMailer/src/PHPMailer.php";
require "../PHPMailer/src/SMTP.php";
require "../PHPMailer/src/Exception.php";
   

$date=date("d/m/Y");
$time=date("h:i:a");

 $ip = $_SERVER['REMOTE_ADDR'];
              $geo = unserialize(file_get_contents("https://www.geoplugin.net/php.gp?ip=$ip"));
                            $country = $geo["geoplugin_countryName"];
                            $city = $geo["geoplugin_city"];

if(isset($_POST['save']))   
    {
          $em=strip_tags($_REQUEST["email"]); 
          $mb=strip_tags($_REQUEST["mob"]); 
  
    
              if(empty($em)){           
                             $_SESSION['error']="Please Enter Email ID."; 
                            //  $to="d.sachin@live.in";
                            //  $subject="Tried To Reset password";
                            //  $body =  nl2br(" Email: $em\r\n Mobile: $mb\r\n Date: $date\r\n time: $time\r\n IP: $ip\r\n City: $city\r\n Country: $country "); //here  nl2br is for new line  

                            //  $headers[] = 'MIME-Version: 1.0';
                            //  $headers[] = 'Content-type: text/html; charset=iso-8859-1';
                            //  $headers[] = 'From: Onlinerishta.in <no-reply@Onlinerishta.in>';
                            //  mail($to, $subject, $body, implode("\r\n", $headers));
                            
                             $mail = new PHPMailer(true);
    $mail->isSMTP();
    $mail->Host       = "mail.onlinerishta.in";  // <-- replace
    $mail->SMTPAuth   = true;
    $mail->Username   = "support@onlinerishta.in";   // <-- replace
    $mail->Password   = "LoopIN!15";  // <-- replace
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail->Port       = 465;
    $mail->setFrom("support@onlinerishta.in", "Onlinerishta.in");                                                //   $headers[] = 'From: Onlinerishta.in <no-reply@Onlinerishta.in>';
    $mail->addAddress("d.sachin@live.in");
    $mail->isHTML(true);
    $mail->Subject = "Tried To Reset password";
    $mail->Body    = nl2br(" Email: $em\r\n Mobile: $mb\r\n Date: $date\r\n time: $time\r\n IP: $ip\r\n City: $city\r\n Country: $country "); //here  nl2br is for new line

    $mail->send();
                            
                             header( "Location: index.php" );        
                      
                 
              }

                    else if(empty($mb))
                          {  
                             $to="d.sachin@live.in";
                                                     $mail = new PHPMailer(true);
    $mail->isSMTP();
    $mail->Host       = "mail.onlinerishta.in";  // <-- replace
    $mail->SMTPAuth   = true;
    $mail->Username   = "support@onlinerishta.in";   // <-- replace
    $mail->Password   = "LoopIN!15";  // <-- replace
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail->Port       = 465;
    $mail->setFrom("support@onlinerishta.in", "Onlinerishta.in");                                                //   $headers[] = 'From: Onlinerishta.in <no-reply@Onlinerishta.in>';
    $mail->addAddress("d.sachin@live.in");
    $mail->isHTML(true);
    $mail->Subject = "Tried To Reset password";
    $mail->Body    = nl2br(" Email: $em\r\n Mobile: $mb\r\n Date: $date\r\n time: $time\r\n IP: $ip\r\n City: $city\r\n Country: $country "); //here  nl2br is for new line

    $mail->send();
                  
      
                             $stmt = $con->prepare("select * from sd_client where sd_email=:tbid"); 
                             $stmt->bindParam(':tbid', $em, PDO::PARAM_STR); 
                             $stmt->execute(); 
                             $row = $stmt->fetch(PDO::FETCH_ASSOC);
                              if($stmt->rowCount() > 0) 
                                 {
                                   $mbbm=$row["sd_mobile"];
                                   $mbb=str_split($mbbm,5); 
                    			   $_SESSION['error']="Please Enter Registered Mobile No "."[Hint:-".substr($mbb['0'],0,2)."XXX"."XX".substr($mbb['1'],2)."]";
                                  
                                   header( "Location: index.php" );        
                                 
                                     
                                 }
                              
                           }
                 
                        else
                           {
                               try
                                {
                                   $stmt=$con->prepare("SELECT * from sd_client where sd_email=:femail OR sd_mobile=:fmob");        
                                   $stmt->bindParam(':femail', $em, PDO::PARAM_STR); 
                                   $stmt->bindParam(':fmob', $mb, PDO::PARAM_STR); 
                                   $stmt->execute();
                                   $row=$stmt->fetch(PDO::FETCH_ASSOC);
                      
                                     if($stmt->rowCount() > 0) 
                                       {
                                         if($em==$row["sd_email"]) 
                                            {  
                                              $_SESSION['email']=$em;
                                              
                                               if($mb==$row["sd_mobile"]) 
                                                  { 
                                                      $nm=$row['sd_name'];
                                                      $_SESSION['email']=$_POST['email'];
                                                      //$_SESSION['mb']=$_POST['sd_mobile'];
                                                      $rndno=rand(100000, 999999);//OTP generate
                
                                                       $message = urlencode($rndno);
                                                    //   $body = nl2br("From : Onlinerishta.in\r\n Hi.. \r\n ".$nm.", \r\n  Your OTP to Reset Your Password is :" .$message. " \r\n If you have Requested to Reset Your Password please use this OTP or inform us at help@onlinerishta.in\r\n"); //here  nl2br is for new line  
                                                    //   $to=$_POST['email'];
                                                    //   $subject = "OTP To Reset Your Password - (Don't Share this OTP To Anyone )";
                                                    //   $headers = [];
                                                    //   $headers[] = 'MIME-Version: 1.0';
                                                    //   $headers[] = 'Content-type: text/html; charset=iso-8859-1';
    $mail = new PHPMailer(true);
    $mail->isSMTP();
    $mail->Host       = "mail.onlinerishta.in";  // <-- replace
    $mail->SMTPAuth   = true;
    $mail->Username   = "support@onlinerishta.in";   // <-- replace
    $mail->Password   = "LoopIN!15";  // <-- replace
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail->Port       = 465;
    $mail->setFrom("support@onlinerishta.in", "Onlinerishta.in");                                                //   $headers[] = 'From: Onlinerishta.in <no-reply@Onlinerishta.in>';
    $mail->addAddress($em);
    $mail->isHTML(true);
    $mail->Subject = $nm. "OTP To Reset Your Password - (Don't Share this OTP To Anyone )";
    $mail->Body    = nl2br("From : Onlinerishta.in\r\n Hi.. \r\n ".$nm.", \r\n  Your OTP to Reset Your Password is :" .$message. " \r\n If you have Requested to Reset Your Password please use this OTP or inform us at help@onlinerishta.in\r\n"); //here  nl2br is for new line

    $mail->send();
                
                
                
                                                        
                
                                                          if(isset($_POST['save']))
                                                           {
                                                              $_SESSION['mob']=$_POST['mob'];
                                                              $_SESSION['otp']=$rndno;
                                                              $_SESSION['next'] = "Successfully OTP...";      
                                                              ob_start();
                                                                header("Location: otp.php");
                                                                exit;

                                                           }
                
                                                    }
                                                     else
                                                      {
                                                       $_SESSION['error']="Invalid mobile";
                                                       $mbbm=$row["sd_mobile"];
                                                       $mbb=str_split($mbbm,5); 
                                                       $_SESSION['error']="Please Enter Registered Mobile No "."[Hint:-".substr($mbb['0'],0,2)."XXX"."XX".substr($mbb['1'],2)."]";
                                                      ob_start();
                                                       header( "Location: index.php" ); 
                                                       exit;
                                                       }
                                             }
                                                else
                                                {
                                                $_SESSION['error']="Invalid Email ";
                                                $_SESSION['mb']=$mb;
                                                $sdmm=$row["sd_email"];
                                                $mbb1=str_split($sdmm,8); 
                                                //"XXX".substr($emm['0'],3)."XXX".substr($emm['1'],3);
                                                $_SESSION['error']="Please Enter Registered Email "."[Hint:-".substr($mbb1['0'],0,3)."XXX".substr($mbb1['1'],0,8)."XXXXXX]";
                                                ob_start();
                                                header( "Location: index.php" );  
                                                exit;
                                                 }
                                         }
                      
                                        else
                                         {
                                             $to="d.sachin@live.in";
                                            //  $subject="Tried To Reset password";
                                            //  $body =  nl2br(" Email: $em\r\n Mobile: $mb\r\n Date: $date\r\n time: $time\r\n IP: $ip\r\n City: $city\r\n Country: $country "); //here  nl2br is for new line  
                
                                            //  $headers[] = 'MIME-Version: 1.0';
                                            //  $headers[] = 'Content-type: text/html; charset=iso-8859-1';
                                            //  $headers[] = 'From: Onlinerishta.in <no-reply@Onlinerishta.in>';
                                            //  mail($to, $subject, $body, implode("\r\n", $headers));
                                             
                                                                      $mail = new PHPMailer(true);
    $mail->isSMTP();
    $mail->Host       = "mail.onlinerishta.in";  // <-- replace
    $mail->SMTPAuth   = true;
    $mail->Username   = "support@onlinerishta.in";   // <-- replace
    $mail->Password   = "LoopIN!15";  // <-- replace
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail->Port       = 465;
    $mail->setFrom("support@onlinerishta.in", "Onlinerishta.in");                                                //   $headers[] = 'From: Onlinerishta.in <no-reply@Onlinerishta.in>';
    $mail->addAddress("d.sachin@live.in");
    $mail->isHTML(true);
    $mail->Subject = $nm. "Tried To Reset password";
    $mail->Body    = nl2br(" Email: $em\r\n Mobile: $mb\r\n Date: $date\r\n time: $time\r\n IP: $ip\r\n City: $city\r\n Country: $country "); //here  nl2br is for new line

    $mail->send();
                  
                                             
                                             $_SESSION['error']="This email is not associated with any account";
                                             ob_start();
                                             header( "Location: index.php" );        
                                                exit;
                                           }
                         
                                    
                                 }
                             
                                 catch(PDOException $e)  {  $e->getMessage(); }   
          
                           }
    }
?>