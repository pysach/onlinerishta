<?php
 include_once("connection.php");
 session_start();
 if(isset($_SESSION['comp']))
 {
 header( "refresh:35;url=profile.php"); 
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Onlinerishta.in</title>
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
    body {
		font-family: 'Varela Round', sans-serif;
	}
	.modal-confirm {		
		color: #434e65;
		width: 525px;
	}
	.modal-confirm .modal-content {
		padding: 20px;
		font-size: 16px;
		border-radius: 5px;
		border: none;
	}
	.modal-confirm .modal-header {
		background: #86dbd5;
		border-bottom: none;   
        position: relative;
		text-align: center;
		margin: -20px -20px 0;
		border-radius: 5px 5px 0 0;
		padding: 20px;
	}
	.modal-confirm h4 {
		text-align: center;
		font-size: 36px;
		margin: 10px 0;
	}
	.modal-confirm .form-control, .modal-confirm .btn {
		min-height: 40px;
		border-radius: 3px; 
	}
	.modal-confirm .close {
        position: absolute;
		top: 15px;
		right: 15px;
		color: #fff;
		text-shadow: none;
		opacity: 0.5;
	}
	.modal-confirm .close:hover {
		opacity: 0.8;
	}
	.modal-confirm .icon-box {
		color: #fff;		
		width: 95px;
		height: 95px;
		display: inline-block;
		border-radius: 50%;
		z-index: 9;
		border: 5px solid #fff;
		padding: 15px;
		text-align: center;
	}
	.modal-confirm .icon-box i {
		font-size: 64px;
		margin: -4px 0 0 -4px;
	}
	.modal-confirm.modal-dialog {
		margin-top: 80px;
	}
    .modal-confirm .btn {
        color: #fff;
        border-radius: 4px;
		background: #5bb8e1;
		text-decoration: none;
		transition: all 0.4s;
        line-height: normal;
		border-radius: 30px;
		margin-top: 10px;
		padding: 6px 20px;
        border: none;
    }
	.modal-confirm .btn:hover, .modal-confirm .btn:focus {
		    background: #d72850;

		outline: none;
	}
	.modal-confirm .btn span {
		margin: 1px 3px 0;
		float: left;
	}
	.modal-confirm .btn i {
		margin-left: 1px;
		font-size: 20px;
		float: right;
	}
	.trigger-btn {
		display: inline-block;
		margin: 100px auto;
	}
</style>
</head>
<body>
	<!-- Button HTML (to Trigger Modal) -->
<!-- <div class="text-center">
	<a href="#myModal" class="trigger-btn" data-toggle="modal">Click to Open Success Modal</a>
</div> -->


<!-- Modal HTML -->
<!-- <div id="myModal" class="modal fade"> -->
	<div class="modal-dialog modal-confirm">
		<div class="modal-content">
			<div class="modal-header">
				<div class="icon-box">
					<i class="material-icons">&#xE876;</i>
				</div>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body text-center">
				<h4>Thank You! <?php echo $_SESSION['comp']?></h4>	
				<h3>Now your profile is complete</h3> 
				<p>For Prime membership please update your profile picture and say Hi.. by whatsapp/text message from your
				registered Mobile No.<?php echo $_SESSION['success']?> for profile verification </p>
					<div class="main-content">

		<p> To search match profile Please Click "Search Profile" BUTTON </p>
	</div>
				
<!--				<p><i class="fa fa-envelope" aria-hidden="true"></i>&nbsp;Email:support@onlinerishta.in</p>
				<p><i class="fa fa-mobile" aria-hidden="true"></i>&nbsp;Mobile:+91 9621001801</p>-->
				<a href="http://onlinerishta.in/profile.php">	<button class="btn btn-success" data-dismiss="modal"><span>View Your Comptete Profile</span> <i class="material-icons">&#xE5C8;</i></button></a>
			<a href="http://onlinerishta.in/members.php">	<button class="btn btn-success" data-dismiss="modal"><span>Search Profile</span> <i class="material-icons">&#xE5C8;</i></button></a>
			
			</div> 
		</div> 
	</div> 
<!-- </div>      -->
</body>
</html>  

<?php 
}

else 

{
    
echo '<script>alert("You have already compleated your Registration");window.location="profile.php"; </script>';


}



unset($_SESSION['comp']);
//unset($_SESSION['SHN']);
?>