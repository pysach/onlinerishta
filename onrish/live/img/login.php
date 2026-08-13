<?php
//login.php

include('session.php');



if(isset($_SESSION["type"]))
{
 header("location: index.php");
}

?>

