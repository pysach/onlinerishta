<?php
  
include '../connection.php';
  session_start();
  
   if(isset($_SESSION['email']))
    {
       $em=$_SESSION['email'];
 
       $stmt = $con->prepare("select * from sd_client where sd_email=:tbid"); 
       $stmt->bindParam(':tbid', $em, PDO::PARAM_STR); 
       $stmt->execute(); 
       $row = $stmt->fetch(PDO::FETCH_ASSOC);
       
                 if($stmt->rowCount()>0)  {  } else { exit("unauthorise acccess");  }
    
       
   }
  else
    {
         $_SESSION['error']="NO account associated with this email account";
    echo '<script>window.location="http://onlinerishta.in/frge"</script>';
    }
   
 ?>