<?php
include '../session.php';
include '../connection.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require "../PHPMailer/src/PHPMailer.php";
require "../PHPMailer/src/SMTP.php";
require "../PHPMailer/src/Exception.php";

                            if(isset($_POST['user']) && isset($_SESSION['tbl'])) 
                                  {   
                                       $_SESSION['eupdate']=$_POST['user'];
                                       $rndno=rand(100000, 999999);
                                       $HN=$_SESSION['HN'];



                                    //   $subject = "OTP To Update Your Email (Don't Share this code To Anyone )";
                                         $message = urlencode($rndno);
                                    //   $body = nl2br("Hi.. $HN \r\n Use This OTP: $message to Update your Email at Onlinerishta.in \r\n For Any Assistance Reach Us At 9621001801 OR Mail US At help@onlinerishta.in\r\n \r\n  "); //here  nl2br is for new line   
                                       $email=$_POST['user'];

                                    //   $headers[] = 'MIME-Version: 1.0';
                                    //   $headers[] = 'Content-type: text/html; charset=iso-8859-1';
                                    //   $headers[] = 'From: Onlinerishta.in <no-reply@Onlinerishta.in>';

                                    //     mail($to,$subject,$body,implode("\r\n", $headers));


$mail = new PHPMailer(true);

try {
    $mail->isSMTP();
    $mail->Host       = "mail.onlinerishta.in";  // <-- replace
    $mail->SMTPAuth   = true;
    $mail->Username   = "support@onlinerishta.in";   // <-- replace
    $mail->Password   = "LoopIN!15";  // <-- replace
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail->Port       = 465;

    // $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    // $mail->Port = 587;
    $mail->setFrom("support@onlinerishta.in", "Secure Login");
    $mail->addAddress($email);

    $mail->isHTML(true);
    $mail->Subject = "OTP To Update Your Email (Don't Share this code To Anyone )";
    $mail->Body    = "
            <h2>Hi.. $HN \r\n Use This OTP: $message to Update your Email at Onlinerishta.in \r\n</h2>
            <p>For Any Assistance Reach Us At 9621001801 OR Mail US At help@onlinerishta.in\r\n \r\n</p>
        ";

    $mail->send();
    echo "OK";

} catch (Exception $e) {
    error_log("OTP SEND ERROR: " . $mail->ErrorInfo);
    echo "Unable to send OTP";
}





                                          if(isset($_POST['user']))

                                           {
                                              $_SESSION['otp']=$rndno;
                                              echo  $loginMsg = "Verification Code Sent Successfully...";      
                                           }
                                  }


     if(isset($_POST['setotp']) && isset($_SESSION['eupdate']) && isset($_SESSION['otp']))
         {
           $rno=$_SESSION['otp'];
           $urno=$_POST['setotp']; 

            if(!strcmp($_SESSION['otp'],$_POST['setotp']))
               {
                     $upemail=$_SESSION['eupdate'];
                     $tap=$_SESSION['tbl'];
	                 $stmt = $con->prepare("UPDATE sd_client set sd_email=:ssid, mail_mob=:memo where tbl= :tapp"); 
	                 $stmt->execute(array( ':ssid'=>$upemail,':memo'=>1,':tapp'=>$tap)); 
                     $stmt=null;
                     echo "Email Updated Successfully...";
                                      
                                       $email="$upemail";
                                    //   $subject = "Your Email Update Successfully";
                                       $HN=$_SESSION['HN'];
                                    //   $body = nl2br("Welcome!!! $HN \r\n Now Use $upemail For All Further Communication Purpose with Onlinerista.in Plz Contact At 9621001801 For any Assitance"); //here  nl2br is for new line  
                                    //   $headers[] = 'MIME-Version: 1.0';
                                    //   $headers[] = 'Content-type: text/html; charset=iso-8859-1';
                                    //   $headers[] = 'From: Onlinerishta.in <no-reply@Onlinerishta.in>';


$mail = new PHPMailer(true);

try {
    $mail->isSMTP();
    $mail->Host       = "mail.onlinerishta.in";  // <-- replace
    $mail->SMTPAuth   = true;
    $mail->Username   = "support@onlinerishta.in";   // <-- replace
    $mail->Password   = "LoopIN!15";  // <-- replace
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail->Port       = 465;

    // $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    // $mail->Port = 587;
    $mail->setFrom("support@onlinerishta.in", "Secure Login");
    $mail->addAddress($email);

    $mail->isHTML(true);
    $mail->Subject = "OTP To Update Your Email (Don't Share this code To Anyone )";
    $mail->Body    = "Welcome!!! $HN \r\n Now Use $upemail For All Further Communication Purpose with Onlinerista.in Plz Contact At 9621001801 For any Assitance";

    $mail->send();
    echo "OK";
} catch (Exception $e) {
    error_log("OTP SEND ERROR: " . $mail->ErrorInfo);
    echo "Unable to send OTP";
}

                                     
                                       
                                       unset($_SESSION['otp']);      
                                       unset($_SESSION['ssmob']);
                                       unset($_SESSION['eupdate']);

               }
                else
         
               {
                  unset($_SESSION['ssmob']);
                 echo "Invalid Verification Code ";
                        
            
               } 
             
             
         }


if(isset($_POST['access_token']))
       {
              $rno=$_SESSION['otp'];
              $email=$_SESSION['eupdate'];
              //$subject = "Verification Code";
            //   $body = nl2br("This Verification Code is Requested to Update Your Email. \r\n If You Have Requested Please Use This OTP: $rno OR Inform Us At 9621001801 OR Mail Us At help@onlinerishta.in\r\n  "); //here  nl2br is for new line
            //   $headers[] = 'MIME-Version: 1.0';
            //   $headers[] = 'Content-type: text/html; charset=iso-8859-1';
            //   $headers[] = 'From: Onlinerishta.in <no-reply@Onlinerishta.in>';

            //   if(mail($to,$subject,$body,implode("\r\n", $headers)))
              
              
            //         {echo "Verification Code Resent successfully !!! Please Check Your Mail Spam Box If Not Found In Inbox.";}
        //else {echo "Unsuccessfull Attempt To Send OTP Again.";}
    
        }

     
$mail = new PHPMailer(true);

try {
    $mail->isSMTP();
    $mail->Host       = "mail.onlinerishta.in";  // <-- replace
    $mail->SMTPAuth   = true;
    $mail->Username   = "support@onlinerishta.in";   // <-- replace
    $mail->Password   = "LoopIN!15";  // <-- replace
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail->Port       = 465;

    // $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    // $mail->Port = 587;
    $mail->setFrom("support@onlinerishta.in", "Secure Login");
    $mail->addAddress($email);

    $mail->isHTML(true);
    $mail->Subject = "OTP To Update Your Email (Don't Share this code To Anyone )";
    $mail->Body    = "This Verification Code is Requested to Update Your Email. \r\n If You Have Requested Please Use This OTP: $rno OR Inform Us At 9621001801.\r\n  ";

    $mail->send();
    echo "OK";
} catch (Exception $e) {
    error_log("OTP SEND ERROR: " . $mail->ErrorInfo);
    echo "Unable to send OTP";
}
if(isset($_POST['access_email']))
       {
           $_SESSION['ssmob']=$_SESSION['smob'];
           echo "Enter Email Again!!!";
           }


?>