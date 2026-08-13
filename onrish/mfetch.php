<?php
include 'session.php';

$cm=$_SESSION['tbl'];
if(isset($_POST['view'])){
if($_POST["view"] != '')
{
$stmm = $con->prepare("UPDATE msg SET comment_status = 1 WHERE msid =? and comment_status=0"); 
$stmm->execute([$cm]);    

}

$stm = $con->prepare("SELECT * FROM msg where msid=? ORDER BY id DESC LIMIT 10"); 
$stm->execute([$cm]);
$output = '';

if(	$result = $stm->fetchAll())
{
 foreach($result as $row)
 {
   $output .= '
   <li>
   <a href="wait.php?nid='.$row["mtap"].'">
   <strong>'."Notification From Profile Id- "."D".($row["mtap"]+786).'</strong><br />
   <small><em>'.$row["message"].'</em></small>
   </a>
   </li>
   ';
 }
}
else{
     $output .= '
     <li><a href="#" class="text-bold text-italic">No notification Found</a></li>';
}
$stm11 = $con->prepare("SELECT * FROM msg WHERE msid=? and comment_status=0"); 
$stm11->execute([$cm]);
$count = $stm11->rowCount();

$data = array(
    'notification' => $output,
    'unseen_notification'  => $count
);
echo json_encode($data);
}
?>