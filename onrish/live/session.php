<?php
  include '../connection.php';
  session_start();
  
   if(isset($_SESSION['tbl']) && isset($_SESSION['smob']))
   {
       $d   =$_SESSION['tbl'];
       $smob=$_SESSION['smob'];

       $stmt = $con->prepare("select * from sd_client where tbl=:tbb and sd_mobile=:smob"); 
       //$stmt->execute(array(':tbb'=>$d, ':smob'=>$smob));
       $stmt->bindParam(':tbb', $d, PDO::PARAM_INT); 
       $stmt->bindParam(':smob', $smob, PDO::PARAM_INT); 
   
       $stmt->execute(); 
       $row = $stmt->fetch(PDO::FETCH_ASSOC);
       
          if($stmt->rowCount()>0) 
          {$stmt = NULL;  } else { exit("unauthorise acccess");  }
   }
        
  else
    
    {
        
    echo '<script>window.location="https://onlinerishta.in/index.php"</script>';
    }
   
 ?>