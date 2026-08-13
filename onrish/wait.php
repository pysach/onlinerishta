<?php
include 'session.php';
if(isset($_GET['nvrf'])&& isset($_SESSION['tbl']))
   {
     $nvrf=$_GET['nvrf'];
     $vf="No";
header("location:profile.php");
	     $stmt2 = $con->prepare("update sd_client set sd_verify = :vf where tbl=:vff"); 
	     $stmt2->execute(array(':vf'=>$vf,':vff'=>$nvrf)); 
     $stmt2=null;
}

if(isset($_GET['pvrf']) && isset($_SESSION['tbl']))
   {
     $nvrf=$_GET['pvrf'];
     $vf="VERIFIED";
header("location:profile.php");
	     $stmt2 = $con->prepare("update sd_client set sd_verify = :vf where tbl=:vff"); 
	     $stmt2->execute(array(':vf'=>$vf,':vff'=>$nvrf)); 
     $stmt2=null;
}








if(isset($_GET['id']) && isset($_SESSION['tbl']))
{

$_SESSION['i']=$_GET['id'];
header("location:vprofile.php");
}


if(isset($_GET['nid']) && isset($_SESSION['tbl']))
{
$_SESSION['i']=$_GET['nid'];
$_SESSION['ii']=$_GET['nid'];
header("location:vprofile.php");
}


if(isset($_GET['Nsort']))
{
$tap=$_SESSION['tbl'];
$pg=$_GET['pg'];
$sid=$_GET['Nsort'];
         header("location:newmatch.php?page=$pg");
	     $stmt = $con->prepare("insert into shortlist (tap,sid) values(:tapp,:ssid)"); 
	     $stmt->execute(array(':tapp'=>$tap, ':ssid'=>$sid)); 
	   
}


if(isset($_GET['del']) && isset($_SESSION['tbl']))
{
 $del=$_GET['del'];

header("location:shrted.php");
	     $stmt1 = $con->prepare("DELETE FROM `shortlist` WHERE `shortlist`.`sid`=:ssid"); 
	     $stmt1->execute(array(':ssid'=>$del)); 
        $stmt1=null;
}



if(isset($_GET['ch_mail']) && isset($_SESSION['tbl']))
{
$ch=$_GET['ch_mail'];
$tap=$_SESSION['tbl'];
$pg=$_GET['pg'];
$mmsg=$_GET['rst'];
$st=0;
       $stmt=$con->prepare("SELECT * from sd_client where tbl=:tap"); 
        
             $stmt->bindParam(':tap', $tap, PDO::PARAM_STR); 
             $stmt->execute();
             $row=$stmt->fetch(PDO::FETCH_ASSOC);
      
            if($stmt->rowCount() > 0) 
                 {  //$stmt=NULL;
                  if($row["sd_email"]!=NULL) 
                     {
                        /* $stmt1=$con->prepare("SELECT * from sd_client where tbl=:tap1"); 
                           $stmt1->bindParam(':tap1', $ch, PDO::PARAM_STR); 
                           $stmt1->execute();
                           $row1=$stmt1->fetch(PDO::FETCH_ASSOC);
                           if($row1["sd_email"]!=NULL)  {*/
                               $stmt2=$con->prepare("insert into msg(mtap,msid,message,comment_status) values(:mtap,:msid,:message,:cmt)"); 
                               $stmt2->bindParam(':mtap', $tap, PDO::PARAM_STR);
                               $stmt2->bindParam(':msid', $ch, PDO::PARAM_STR);
                               $stmt2->bindParam(':message',$mmsg, PDO::PARAM_STR);
                             //$stmt2->bindParam(':tap1', $tap, PDO::PARAM_STR); 
                               $stmt2->bindParam(':cmt', $st, PDO::PARAM_STR);
                               $stmt2->execute();
                				$sub_query = "	INSERT INTO login_detail (accept) VALUES ('yes') ";
                				$statement = $con->prepare($sub_query);
                				$statement->execute();
                		      /*$_SESSION['login_details_id'] = $con->lastInsertId();*/
                                $_SESSION['eerror']="An interest notification has been sent to this Selected Profile";
                                header("location:members.php?page=$pg");
        
 				             if(isset($_SESSION['ii']))
 				                {   
 				                    unset($_SESSION['ii']);
 				                    header("location:vprofile.php");
 				                }
                                 /*}
                                else
                                 {
                                   $_SESSION['eerror']="Unable to send a request as member's Email Id is not updated ...";
                                   header("location:members.php?page=$pg");
                                 }*/
                     }
                
                   else
                     {
                      
                       $_SESSION['ssmob']=$_SESSION['smob'];
                       header("location:update_email");
                     }
               }
               else
               {
                $_SESSION['eerror']="No contact ";
               header("location:members.php?page=$pg");
                   
               }
      
}


?>










