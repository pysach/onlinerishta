<?php

date_default_timezone_set("Asia/Kolkata");

include 'connection.php';

$x=140;
$newppic=140;
$extension="jpg";
$name = "img/" . $newppic .".". date("d-m-Y h:i:sa") .".". $extension;
//echo rand();
  $stmt = $con->prepare("update sd_client set img1='$name'  where tbl=:tbid"); 
	     //$stmt->bindParam(':img', NOW(), PDO::PARAM_STR); 
	     $stmt->bindParam(':tbid', $x, PDO::PARAM_STR); 
         $stmt->execute(); 	

//'".$name.date("d-m-Y h:i:sa")."'



?>
