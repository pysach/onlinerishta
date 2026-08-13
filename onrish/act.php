<?php
include 'session.php';

$id = $_POST['id'];
if($id > 0)
   {
      $prm=$id;
     // $pg=$_GET['pg'];
      $fied="Premium";
//header("location:adlog.php?page=$pg");
	     $stmt2 = $con->prepare("update sd_client set sd_verify = :vf where tbl=:vff"); 
	     $stmt2->execute(array(':vf'=>$fied,':vff'=>$prm)); 
         $stmt2=null;
 
}



if(isset($_GET['short']) && isset($_SESSION['tbl']))
{
$tap=$_SESSION['tbl'];
$sid=$_GET['short'];
         header("location:members.php");
	     $stmt = $con->prepare("insert into shortlist (tap,sid) values(:tapp,:ssid)"); 
	     $stmt->execute(array(':tapp'=>$tap, ':ssid'=>$sid)); 
$stmt=null;	   
}


if(isset($_GET['vrf'])&& isset($_SESSION['adm']))
   {
      $vrf=$_GET['vrf'];
     $pg=$_GET['pg'];
      $vf="VERIFIED";  // this NULL is not asigned as ('NULL') character this is NULL of data type and readable as is null.
  header("location:adlog.php?page=$pg");
	     $stmt2 = $con->prepare("update sd_client set sd_verify = :vf where tbl=:vff"); 
	     $stmt2->execute(array(':vf'=>$vf,':vff'=>$vrf)); 
     $stmt2=null;
    }
    
    
    if(isset($_GET['engaged'])&& isset($_SESSION['adm']))
   {
       $vrf=$_GET['engaged'];
       $pg=$_GET['pg'];
       $vf="Engaged";  // this NULL is not asigned as ('NULL') character this is NULL of data type and readable as is null.
       header("location:adlog.php?page=$pg");
	     $stmt11 = $con->prepare("update sd_client set sd_verify = :vf where tbl=:vff"); 
	     $stmt11->execute(array(':vf'=>$vf,':vff'=>$vrf)); 
         $stmt11=null;
    }
    
    

if(isset($_GET['nvrf'])&& isset($_SESSION['adm']))
   {
     $nvrf=$_GET['nvrf'];
         $pg=$_GET['pg'];
     $vf="No";
header("location:adlog.php?page=$pg");
	     $stmt2 = $con->prepare("update sd_client set sd_verify = :vf where tbl=:vff"); 
	     $stmt2->execute(array(':vf'=>$vf,':vff'=>$nvrf)); 
     $stmt2=null;
}

if(isset($_GET['prm'])&& isset($_SESSION['adm']))
   {
      $prm=$_GET['prm'];
      $pg=$_GET['pg'];
      $fied="Premium";
header("location:adlog.php?page=$pg");
	     $stmt2 = $con->prepare("update sd_client set sd_verify = :vf where tbl=:vff"); 
	     $stmt2->execute(array(':vf'=>$fied,':vff'=>$prm)); 
     
$stmt2=null;

}




if(isset($_GET['addel']) && isset($_SESSION['adm']))
   {
     $del1=$_GET['addel'];
    
       $stmt2 = $con->prepare("DELETE FROM sdetails WHERE did=:dsds"); 
          if($stmt2->execute(array(':dsds'=>$del1)))
               { 
                    $stmt1 = $con->prepare("DELETE FROM sd_client WHERE tbl=:sdsd"); 
                     if($stmt1->execute(array(':sdsd'=>$del1)))
                       { 
//                          header("location:https://onlinerishta.in/adlog.php");   
  echo '<script>window.location="https://onlinerishta.in/adlog.php"</script>';
                        }
               }
               
               else
                {
                       $stmt1 = $con->prepare("DELETE FROM sd_client WHERE tbl=:sdsd"); 
                     
                       if($stmt1->execute(array(':sdsd'=>$del1)))
                         { 
                  header("location:https://onlinerishta.in/adlog.php");   
  /*echo '<script>window.location="https://onlinerishta.in/adlog.php"</script>';*/
 
                          }
                }
	              $stmt1=null;
	              $stmt2=null;	   
}

if(isset($_GET['ch_mail']) && isset($_SESSION['adm']))
{
$ch=$_GET['ch_mail'];
$tap=$_SESSION['tbl'];
$pg=$_GET['pg'];
$mmsg=$_GET['adm'];
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
                         
                           if($row1["sd_email"]!=NULL) 

                         { 
                        */ 
                           $stmt2=$con->prepare("insert into msg(mtap,msid,message,comment_status) values(:mtap,:msid,:message,:cmt)"); 
                           $stmt2->bindParam(':mtap', $tap, PDO::PARAM_STR);
                           $stmt2->bindParam(':msid', $ch, PDO::PARAM_STR);
                           $stmt2->bindParam(':message',$mmsg, PDO::PARAM_STR);
                           //$stmt2->bindParam(':tap1', $tap, PDO::PARAM_STR); 
                           $stmt2->bindParam(':cmt', $st, PDO::PARAM_STR);
                           $stmt2->execute();

                          $_SESSION['eerror']="An interest notification has been sent to this Selected Profile";
                          header("location:adlog.php?page=$pg");
        
/*                          }
                      else
                          {
                           $stmt2=$con->prepare("insert into msg(mtap,msid,message) values(:mtap,:msid,:message)"); 
                           $stmt2->bindParam(':mtap', $tap, PDO::PARAM_STR);
                           $stmt2->bindParam(':msid', $ch, PDO::PARAM_STR);
                           $stmt2->bindParam(':message',$mmsg, PDO::PARAM_STR);
                           $stmt2->bindParam(':tap1', $tap, PDO::PARAM_STR); 
                           $stmt2->execute();
                              
                           $_SESSION['eerror']="Unable to send a request as member's Email Id is not updated ...";
                           header("location:adlog.php?page=$pg");
                          }
*/      
}
                   else
                     {
                       $_SESSION['email_update']=" Please Update Your Email First";
                       header("location:popedit.php");
                     }
               }
               else
               {
                $_SESSION['eerror']="No contact ";
               header("location:adlog.php?page=$pg");
                   
               }
      
}
?>