<?php
include('session.php');

if(isset($_POST["action"]))
{
 if($_POST["action"] == "update_time")
 {
  $query = "
  UPDATE login_details SET last_activity = DATE_SUB(NOW(), INTERVAL 5400 SECOND) WHERE login_details_id = :login_details_id";
  $statement = $con->prepare($query);
  $statement->execute(
   array(
   
    'login_details_id' => $_SESSION["login_id"]
   )
  );
 }
 if($_POST["action"] == "fetch_data")
 {
     $output = '';
  $query ="SELECT login_details.user_id, sd_client.sd_mobile, sd_client.img1 
  FROM login_details 
  INNER JOIN sd_client 
  ON sd_client.tbl = login_details.user_id 
  WHERE last_activity > DATE_SUB(NOW(), INTERVAL 5404 SECOND)
  AND sd_client.sd_mobile != 9335994716";
  
  $statement = $con->prepare($query);
  $statement->execute();
  $result = $statement->fetchAll();
  $count = $statement->rowCount();
  $output .= '
  <div class="table-responsive">
   <div align="right">
    '.$count.' Users Online
   </div>
   <table class="table table-bordered table-striped">
    <tr>
     <th>No.</th>
     <th>Email ID</th>
     <th>Image</th>
    </tr>
  ';

$i = 0;
  foreach($result as $row)
  {
   $i = $i + 1;
   $output .= '
   <tr> 
    <td>'.$i.'</td>
    <td>'.$row["sd_mobile"].'</td>
    <td><img src="../'.$row["img1"].'" class="img-thumbnail" width="50" /></td>
   </tr>
   ';
  }
  $output .= '</table></div>';
  echo $output;
 }
}

/* $i = 0;
  foreach($result as $row)
  {
   $i = $i + 1;
   $output .= '
   <tr> 
    <td>'.$i.'</td>
    <td>'.$row["sd_mobile"].'</td>
    <td><img src="../'.$row["img1"].'"   class="img-thumbnail" width="80" /></td>
   </tr>
   ';
   
  }
  $output .= '</table></div>';
  echo $output;
 }
}*/



?>