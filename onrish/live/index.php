<?php
   include('session.php');
 
   //sleep(10);
   if($_SESSION["type"] =="9335994716")
   {
    ?>
<!DOCTYPE html>
<html>
 <head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
 <style>
     blink {
  animation: 1s linear infinite condemned_blink_effect;
  color: #4ebbb6;
}

@keyframes condemned_blink_effect {
  0% {
    visibility: hidden;
  }
  50% {
    visibility: hidden;
  }
  100% {
    visibility: visible;
  }
  
}
 </style>
 <body>
  <div class="container">
   <h2 align="center"><blink>Active Users</blink></h2>
   <br />
   <div align="right">
          <a href="../adlog.php">Admin</a></a>&nbsp;&nbsp;
    <a href="../logout.php">Logout</a>
   </div>
   <br />


   <div class="panel panel-default">

    <div align="center" class="panel-heading"><blink>Live -Online User Details</blink></div>
    <div id="user_login_status" class="panel-body"></div>
 
   </div>

   <div class="panel panel-default">

    <div style="color:red" class="panel-heading">OFFLINE - Latest Visitors)</div>
    <div id="visited" class="panel-body"></div>
 
   </div>


 
 <?php
    }
    else{header("Location: https://onlinerishta.in/profile.php");}
   ?>
  </div>
 </body>
</html>

<script>
$(document).ready(function(){

<?php
if($_SESSION["type"] !== "9335994716")
{
?>


function update_user_activity()
{
 var action = 'update_time';
 $.ajax({
  url:"live.php",
  method:"POST",
  data:{action:action},
  success:function(data)
  {

  }
 });
}
setInterval(function(){ 
 update_user_activity();
}, 3000);



<?php
}
else
{
?>

fetch_user_login_data();
setInterval(function(){
 fetch_user_login_data();
}, 3000);

function fetch_user_login_data()
{
 var action = "fetch_data";
 $.ajax({
  url:"live.php",
  method:"POST",
  data:{action:action},
  success:function(data)
  {
   $('#user_login_status').html(data);
  }
 });
}



f1();
setInterval(function(){
 f1();
}, 3000);

function f1()
{
 var action = "visited";
 $.ajax({
  url:"live.php",
  method:"POST",
  data:{action:action},
  success:function(data)
  {
   $('#visited').html(data);
  }
 });
}



<?php
}
?>

});
</script>