<?php
header("Pragma: no-cache");
header("Cache-Control: no-cache");
header("Expires: 0");

require_once 'connection.php';

$ip = $_SERVER['REMOTE_ADDR'];
					$geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$ip"));
                    $country = $geo["geoplugin_countryName"];
                    $city = $geo["geoplugin_city"];
session_start();

if(isset($_SESSION['tbl'])) 
{
  header("location: profile.php");
}

 if(isset($_REQUEST['sub1']))  
  {
     $name=strip_tags($_REQUEST["suser"]); //textbox name "txt_username_email"
     $password=strip_tags($_REQUEST["spass"]); //textbox name "txt_username_email"
  
    
     if(empty($name)){           
                      $errorMsg[]="please enter Mobile No"; //check "username/email" textbox not empty 
                     }

     else if(empty($password)){
                      $errorMsg[]="please enter Password"; //check "username/email" textbox not empty 
                     }
  
      else
       {
          try
           {
             $stmt=$con->prepare("SELECT * from sd_client where sd_mobile=:name"); 
        
             $stmt->bindParam(':name', $name, PDO::PARAM_STR); 
             $stmt->execute();
             $row=$stmt->fetch(PDO::FETCH_ASSOC);
      
              if($stmt->rowCount() > 0) 
                 {
                  if($name==$row["sd_mobile"]) 
                     {
                      if($name==$row["sd_mobile"] && (password_verify($password, $row["sd_pass"]))) 
                         {
                           $_SESSION['thank'] = $row['sd_name'];
                           $_SESSION['tbl'] = $row['tbl'];
                           $_SESSION['sex'] = $row['sd_sex'];
                           $_SESSION['chmail'] = $row['sd_email'];
                           $_SESSION['smob'] = $row['sd_mobile'];
                           $_SESSION['sd_rel']=$row['sd_religion'];
                           $_SESSION['s_cast']=$row['scast'];



     $insert_query = "INSERT INTO login_details ( user_id, last_activity) VALUES (:user_id, DATE_SUB(NOW(), INTERVAL 5400 SECOND))";
     $statement = $con->prepare($insert_query);
     $statement->execute( array( 'user_id'  => $_SESSION['tbl'],));
          $login_id = $con->lastInsertId();
          $_SESSION["type"] = $_SESSION['smob'];
          $_SESSION["login_id"] = $login_id;
          
                $_SESSION['username'] =$_SESSION['thank']; 
                $_SESSION['user_id'] = $_SESSION['tbl'];
				$sub_query = "
				INSERT INTO login_detail 
	     		(user_id) 
	     		VALUES ('".$_SESSION['tbl']."')
				";
				$statement = $con->prepare($sub_query);
				$statement->execute();
				$_SESSION['login_details_id'] = $con->lastInsertId();



                           if($name=='9335994716')
                              {
                                $_SESSION['adm']=$row["sd_mobile"];
                                $loginMsg = "Successfully Login as Admin...";   
                                 // header("Refresh: 0; url=adlog.php");
                                  header('location: adlog.php');
                               }

                                else

                                {
                                   $loginMsg = "Successfully Login ...";   
                                   header("Refresh: 0; url=profile.php");
                                }
                    
                                      
                          }
                      else
                          {
                           $errorMsg[]="Invalid password";
                           
    //   $to  = 'help@onlinerishta.in,onlinerishtaa@gmail.com';
    //   $subject= $name. " Tried to login with wrong Password";
    //   $body =  nl2br("Visited: $date \r\n From: $name\r\n   Current IP: $ip \r\n Current City: $city-$country "); //here  nl2br is for new line  
    
    //   $headers[] = 'MIME-Version: 1.0';
    //   $headers[] = 'Content-type: text/html; charset=iso-8859-1';
    //   $headers[] = 'From: Onlinerishta.in <no-reply@Onlinerishta.in>';
      
    //       mail($to, $subject, $body, implode("\r\n", $headers));
    
    
       $mail = new PHPMailer(true);

    $mail->isSMTP();
    $mail->Host       = "mail.onlinerishta.in";  // <-- replace
    $mail->SMTPAuth   = true;
    $mail->Username   = "support@onlinerishta.in";   // <-- replace
    $mail->Password   = "LoopIN!15";  // <-- replace

    // $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    // $mail->Port = 587;

    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail->Port       = 465;

    $mail->setFrom("support@onlinerishta.in", "Onlinerishta.in");
    $mail->addAddress("d.sachin@live.in");

    $mail->isHTML(true);
    $mail->Subject = $name. " Tried to login with wrong Password";
    $mail->Body    = nl2br("Visited: $date \r\n From: $name\r\n   Current IP: $ip \r\n Current City: $city-$country "); //here  nl2br is for new line

    $mail->send();
    
    
    
                           
                          }
                     }
                   else
                     {
                       $errorMsg[]="Invalid Username ";
                     }
               }
               else
               {
                $errorMsg[]="Invalid UserId And Password";
               }
           }
            catch(PDOException $e)     {   $e->getMessage(); }   
       }
   }
?>



<!DOCTYPE HTML>
<html>
<head>
<title>Onlinerishta.in</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Marital Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
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
<script>
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
</script>
</head>
<body>

<?php include 'head.php';?>


<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="index.php"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">Login</li>
     <!-- </ul>
     <ul> -->
        <a href="index.php"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page"><a href="register.php">Register</a></li>
     </ul>
   </div>
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
    if(isset($loginMsg))
    {
    ?>
      <div class="alert alert-success">
        <strong><?php echo $loginMsg; ?></strong>
      </div>
        <?php
    }
    ?> 
   <div class="services">
      <div class="col-sm-6 login_left">
     <form action="" method="POST">
        <div class="form-item form-type-textfield form-item-name">
        <label for="edit-name">Login Id (Enter Registerd Mobile No.) <span class="form-required" title="This field is required.">*</span></label>
        <input type="text" id="edit-name" name="suser" value="" required="" maxlength="60" class="form-text required">
      </div>
      <div class="form-item form-type-password form-item-pass">
        <label for="edit-pass">Password <span class="form-required" title="This field is required.">*</span></label>
        <input type="password" id="edit-pass" name="spass" required="" maxlength="128" class="form-text required">
      </div>
      <div class="form-actions">
        <input type="submit" id="edit-submit" name="sub1" value="Log in" class="btn_1 submit">&nbsp;&nbsp;
        <a href="http://onlinerishta.in/frge/">FORGOT PASSWORD ?</a>
      </div>
     </form>
    </div>
    <div class="col-sm-6">
      <ul class="sharing"><br>
      <li><a href="https://www.facebook.com/groups/919474718518692/" target="_blank" class="facebook" title="Facebook"><i class="fa fa-boxed fa-fw fa-facebook"></i> Share on Facebook</a></li>
        <li><a href="https://mobile.twitter.com/Onlinerishtaa" target="_blank" class="twitter" title="Twitter"><i class="fa fa-boxed fa-fw fa-twitter"></i> Tweet</a></li>
        <!-- <li><a href="https://www.youtube.com/channel/UCVbFghbp6HpzgOxMD94aVJA"><i class="fa fa-youtube fa1"> </i></a></li>-->
        
        <!--<li><a href="#" class="mail" title="Email"><i class="fa fa-boxed fa-fw fa-envelope-o"></i> E-mail</a></li>-->
    </ul>
    </div>
    <div class="clearfix"> </div>
   </div>
  </div>
</div>

<?php include 'footer.php' ?>
</body>
</html>