<?php
//date("Y-m-d H:i:s", STRTOTIME(date('h:i:sa')));
include('session.php');
$message = '';
if(isset($_SESSION['tbl'])){
     $insert_query = "INSERT INTO login_details ( user_id, last_activity) VALUES (:user_id, DATE_SUB(NOW(), INTERVAL 5400 SECOND))";
     $statement = $con->prepare($insert_query);
     $statement->execute(
      array(
       'user_id'  => $_SESSION['tbl'],
      )
     );
     echo $login_id = $con->lastInsertId();
          $_SESSION["type"] = $_SESSION['smob'];
          $_SESSION["login_id"] = $login_id;
}
?>
<!DOCTYPE html>
<html>
 <head>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
 <body>
   <?php
  // include('connection.php');
   if($_SESSION["type"] =="9335994716")
   {
 ?>
 
  <div class="container">
   <h2 align="center">How Display Users Online using PHP with Ajax JQuery</h2>
   <br />
   <div align="right">
    <a href="logout.php">Logout</a>
   </div>
   <br />


   <div class="panel panel-default">
    <div class="panel-heading">Online User Details</div>
    <div id="user_login_status" class="panel-body">

    </div>
   </div>
 
 <?php
    }
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
<?php
}
?>

});
</script>