<?php

//update_last_activity.php
date_default_timezone_set('Asia/Calcutta');
include('database_connection.php');

session_start();

$query = "
UPDATE login_detail 
SET last_activity = DATE_ADD(NOW(), INTERVAL 34203 SECOND) 
WHERE login_details_id = '".$_SESSION["login_details_id"]."'
";

$statement = $connect->prepare($query);

$statement->execute();

?>

