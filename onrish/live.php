<?php
include('session.php');
 $ip = $_SERVER['REMOTE_ADDR'];
/*					$geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$ip"));
                    $country = $geo["geoplugin_countryName"];
                    $city = $geo["geoplugin_city"];*/
if(isset($_POST["action"]))
{
 if($_POST["action"] == "update_time")
       {
        $query = "UPDATE login_details SET last_activity = DATE_SUB(NOW(), INTERVAL 5400 SECOND), sd_ip = :ip WHERE login_details_id = :login_details_id";
        $statement = $con->prepare($query);
        $statement->execute(
                             array(  'login_details_id' => $_SESSION["login_id"],
                                      ':ip'=>$ip
                                  )
                            );
        }
        
 

}
?>