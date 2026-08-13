<?php
include 'session.php';

if(isset($_POST['save']))
   {
      $rno=$_SESSION['otp'];
      $urno=$_POST['otpvalue'];
      
        if(!strcmp($rno,$urno))
            {
            header ("Location:reset.php");
            }
            else
              { echo '<script>alert("Invalid Verification Code") </script>'; }
    }
    
    //resend OTP
    if(isset($_POST['resend']))
    {
    $message="<p class='w3-text-green'>We Sucessfully Resend OTP to your Mail Plz Check Your Spam Folder Also.</p>";
    $rno=$_SESSION['otp'];
    $to=$_SESSION['email'];
    $subject = "OTP";
    $txt = "OTP: ".$rno;
    $headers = [];
          $headers[] = 'MIME-Version: 1.0';
          $headers[] = 'Content-type: text/html; charset=iso-8859-1';
          $headers[] = 'From: help@Onlinerishta.in <no-reply@Onlinerishta.in>';
          
          mail($to,$subject,$txt,implode("\r\n", $headers));
          $message="<p class='w3-text-green w3-center'><b>Sucessfully resend OTP to your mail.</b></p>";
    }
?>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="">
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <!-- jQuery -->
<!--     <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script -->
    
<!--     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
 -->    
   <!--  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script> -->
    <!-- Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script type="text/javascript" src="js/jquery-3.5.0.min.js"></script>
<script src="js/bootstrap.min.js" ></script>

<title>Onlinerishta.in</title>
    <style>
        label {
            margin-bottom: 0.1em;
            margin-top: 0.5em;
        }
        .container { margin: 150px auto; }
    </style>
</head>

<body class="bg-info">

    <!-- FORM -->
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-6 p-5 bg-white shadow-lg rounded">

                <form id="test-form" method="post" action="">
                    <h2 style="text-align: center;">You will Get your OTP On the Registered Email Inbox OR Spam Folder</h2>
                    <hr>
                    
                    <div class="form-group">
                        <label for="OTP" >Enter OTP Received on Your Registered Email With Us</label>
             <input type="text" name="otpvalue" id="password"  class="form-control" placeholder="OTP">
             <input type="submit" name="save" class="btn btn-primary btn-block mt-5" value="SUBMIT OTP">
                    

                    </div>
        <div style="text-align: right;"><button class="w3-btn w3-green w3-round" style="  width:100%;height:30px" name="resend">Resend</button></div>
                </form>

            </div><?php if(isset($message)) { echo $message; } ?>
        </div>
    </div>

    <!-- CODE -->



    <!-- Load Validation JS -->
    <script type="text/javascript" src="bs4-form-validation.js"></script>
    <script type="text/javascript">
        let form = new Validation("test-form");
        // Validation Functions
      form.requireText("name", 4, 20, [" "], []);
        form.requireEmail("email", 4, 30, [" "], []);
        form.registerPassword("password", 5, 7, [" "], [], "confirm");
    </script>


</body>
</html>