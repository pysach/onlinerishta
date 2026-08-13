<?php
include('session.php');
 $ip = $_SERVER['REMOTE_ADDR'];
					$geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$ip"));
                    $country = $geo["geoplugin_countryName"];
                    $city = $geo["geoplugin_city"];

 
/*if( ini_get('allow_url_fopen') ) {
    die('allow_url_fopen is enabled. file_get_contents should work well');
} else {
    die('allow_url_fopen is disabled. file_get_contents would not work');
}
*/



if(isset($_POST["action"]))
   {
           if($_POST["action"] == "update_time")
              {
                $query = "UPDATE login_details SET last_activity = DATE_SUB(NOW(), INTERVAL 5400 SECOND), sd_ip = :ip WHERE login_details_id = :login_details_id";
                $statement = $con->prepare($query);
                $statement->execute(
                             array(  'login_details_id' => $_SESSION["login_id"],
                                      ':ip'=>$city." ".$country." ".$ip
                                  )
                            );
              }
   
        
            if($_POST["action"] == "fetch_data")
              {
                 $output = '';
                 $query ="SELECT login_details.user_id, sd_client.sd_name, sd_client.sd_mobile,sd_client.sd_email, sd_client.img1,login_details.sd_ip,login_details.last_activity
                     FROM login_details 
                     INNER JOIN sd_client 
                     ON sd_client.tbl = login_details.user_id 
                     WHERE last_activity > DATE_SUB(NOW(), INTERVAL 5404 SECOND)
                     AND sd_client.sd_mobile != 9335994716 order by login_details.last_activity desc";
  
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
                       <th>Name</th>
                       <th>Mobile No</th>
                       <th>Email Id</th>
                       <th>Created For</th>

                       <th>Image</th>
                       <th>IP Address</th>  
                       <th>Last Activity</th>
                       
                       </tr>
                       ';

                    $i = 0;
                            foreach($result as $row)
                           {
                                 $i = $i + 1;
                                 $output .= '
                             <tr> 
                             <td>'.$i.'</td>
                             <td>'.$row["sd_name"].'</td>
                             <td>'.$row["sd_mobile"].'</td>
                             <td>'.$row["sd_email"].'</td>
                             <td>'.$row["look"].'</td>    
                             <td><img src="../'.$row["img1"].'" class="img-thumbnail" width="60" /></td>
                             <td>'.$row["sd_ip"].'</td>
                             <td>'.$row["last_activity"].'</td>
                             </tr>
                             ';
                            }
                              $output .= '</table></div>';
                              echo $output;
            }
            
            
            
                     if($_POST["action"] == "visited")
            {
                 $output = '';
                 $query ="SELECT *
                     FROM login_details 
                     INNER JOIN sd_client 
                     ON sd_client.tbl = login_details.user_id 
                     AND sd_client.sd_mobile != 9335994716 order by last_activity desc limit 100 ";
  
                       $statement = $con->prepare($query);
                       $statement->execute();
                       $result = $statement->fetchAll();
                       $count = $statement->rowCount();
                       $output .= '
                      <div class="table-responsive">
                      <div align="right">
                       '.$count.' Visitors
                      </div>
                           <table class="table table-bordered table-striped">
                        <tr>
                       <th>No.</th>
                       <th>Name</th>
                       <th>Mobile No</th>
                       <th>Email Id</th>
                       <th>Created For</th>
                       <th>Image</th>
                       <th>IP</th>
                       <th>Last Activity</th>
                       </tr>
                       ';

                    $i = 0;
/*                    class="img-thumbnail"*/
                            foreach($result as $row)
                           {
                                 $i = $i + 1;
                                 $output .= '
                             <tr> 
                             <td>'.$i.'</td>
                             <td>'.$row["sd_name"].'</td>
                             <td>'.$row["sd_mobile"].'</td>
                             <td>'.$row["sd_email"].'</td>
                             <td>'.$row["look"].'</td>                             
                             <td><img src="../'.$row["img1"].'"  width="50" /></td>
                             <td>'.$row["sd_ip"].'</td>
                             <td>'.$row["last_activity"].'</td>
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