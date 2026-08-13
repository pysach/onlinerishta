<?php

include 'session.php';

date_default_timezone_set("Asia/Kolkata"); $date=date("d/m/y"); $time=date("h:i:a");

$g=$_SESSION['sex'];

if($g=='Male') { $g='Female';} elseif ($g=='Female'){ $g='Male';}

$limit = 8;  
if (isset($_GET["page"]))
    { $page  = $_GET["page"]; } 
else 
    { $page=1; };  
$start_from = ($page-1) * $limit;  
?> 

<!DOCTYPE HTML>
<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content=" " />
<script type="application/x-javascript">
     addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<script src="jquery-3.5.0.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Oswald:300,400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Ubuntu:300,400,500,700' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet"> 

<!----font-Awesome----->
<!-- I put this below here form bottom flexer -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

<!-- flexer -->
<link rel="stylesheet" href="dist/simplePagination.css" />
<script src="dist/jquery.simplePagination.js"></script>
   

<style>
.bg-image {
  /* Add the blur effect */
  filter: blur(9px);
  -webkit-filter: blur(9px);
  }
  
  .bg-text {
    background-color: rgb(0,0,0);
    background-color: #55555540;
    color: #fdfcfc;
    font-weight: normal;
    font-size: x-large;
    border: 0px solid #e62121;
    position: absolute;
    top: 77%;
    left: 48%;
    transform: translate(-50%, -50%);
    z-index: 2;
    width: 94%;
    text-align: center;
    padding: 30px;
}
  
</style>
<?php include 'header.php'; ?>
</head>
<body>

<!-- <div class="container" style="padding-top:20px;"> -->
<!-- ============================  Navigation End ============================ -->
<div class="grid_3">
  <div class="container">
   <div class="col-md-12 members_box">
  <div class="col-md-4"><h1><a href="members.php?reset=$$01%0%k&k">All profile</a></h1></div>
          <form action="members.php"  method="POST">
           <div class="col-md-4 members_box1">
			  <input type="text" name="fid" id="sid"  required="" placeholder="Enter Profile ID :">
			  <input type="submit" name="f_id" value="Search">
           </div>
    </form>
         <form action="members.php"  method="POST">
           <div class="col-md-4 members_box1">
			  <input type="text" name="fname" id="fname"  required="" placeholder="Search By Name / surname:">
			  <input type="submit" name="f_name" value="Search">
           </div>
         </form>
  </div>


<?php include  'ffind.php';  

if(isset($_GET['reset']))
{
    $_SESSION['j']="";
    $j="";
}

if(isset($_POST['f_name']))
{
$fn=$_POST['fname'];
$_SESSION['j']="and sd_name LIKE '%$fn%'";

}

$j=$_SESSION['j'];


if(isset($_POST['f_id']))
{

$fid=substr($_POST['fid'],1)-786;

$j="and tbl = '$fid'";
}




$stmt = $con->prepare("SELECT COUNT(tbl) as idd FROM sd_client where sd_sex=:gen $j and img1 is Not Null"); 
$stmt->execute(array(':gen'=>$g));
$row = $stmt->fetch(PDO::FETCH_ASSOC);
$total_records = $row['idd'];	
$total_pages = ceil($total_records / $limit);  
$pagLink = "<nav><ul class='pagination'>";
for($i=1; $i<=$total_pages; $i++) {  $pagLink .= "<li><a href='members.php?page=".$i."'>".$i."</a></li>";   }
echo $pagLink . "</ul></nav>";  
?>



    <?php
    if(isset($_SESSION['eerror']))
    {
      
      ?>
        <div class="col-sm-12 alert alert-danger">
          <strong><?php echo $_SESSION['eerror']; ?></strong>
        </div>
            <?php
      unset($_SESSION['eerror']);
      
    }

$religion=$_SESSION['sd_rel'];
$stmt=$con->prepare("SELECT * FROM sd_client where sd_sex IN(:gen) and sd_religion='$religion' $j and img1 is Not Null ORDER BY tbl ASC LIMIT $start_from, $limit"); 
$stmt->execute(array(':gen'=>$g));

while($row = $stmt->fetch(PDO::FETCH_ASSOC))
 {

$y=$row['sd_y'];
$diff = (date('Y') - $y);
?>

	<div class="profile_top"><a href="wait.php?id=<?php echo $row['tbl']; ?>" >
      <h2> <?php $x=$row['tbl']; ?></h2>
	
	    	   <?php  include 'pic.php' ; ?>
               
               <div class="col-sm-3">
	      <ul class="login_details1">
			 <br>
			 <li><b>Joined on <?php echo $row['sd_date']; ?></b></li>
			 <li><p> </p></li>
		  </ul>
	    </div>	
	    <div class="col-sm-6">
	     	<br>
	    <h2 "style: color='red'">Profile Id : <?php echo "D".($x+786); ?></h2>
	    	<table class="table_working_hours">
	        	<tbody>
	        		<tr class="opened_1">
						<td class="day_label1">Name:</td>
						<td class="day_value"><?php echo $row['sd_name']; ?></td>
					</tr>
				    <tr class="opened">
						<td class="day_label1">Age :</td>
						<td class="day_value"><?php echo $diff; ?></td>
					</tr>
				    <tr class="opened">
						<td class="day_label1">City:</td>
						<td class="day_value"><?php echo $row['sd_city'] ?></td>
					</tr>
				
                    <tr class="closed">
						<td class="day_label1"><a href="https://onlinerishta.in/paytm/">Contact :</a></td>
						<td class="day_value closed"><span><a href="https://onlinerishta.in/paytm/">
			            <?php $mbb=str_split($row['sd_mobile'],5);  echo substr($mbb[0],0,2)."XXX"."XX".substr($mbb[1],2); ?></a></span></td>
					</tr>
					<tr class="closed">
						<td class="day_label1">Profile Created by :</td>
						<td class="day_value closed"><span><?php echo $row['look']; ?></span></td>
					</tr>
<?php  
$stmt1=$con->prepare("SELECT * FROM sdetails where did=:did order by did desc"); 
$stmt1->execute(array(':did'=>$x));
$row1 = $stmt1->fetch(PDO::FETCH_ASSOC);
?>				    

                    <tr class="opened">
						<td class="day_label1">Height :</td>
						<td class="day_value"><?php echo $row1['sheight']; ?></td>
					</tr>

                    <tr class="opened">
						<td class="day_label1">Profession :</td>
						<td class="day_value"><?php echo $row1['soccupation']; ?></td>
					</tr>
					
					<tr class="opened">
						<td class="day_label1">Cast:</td>
						<td class="day_value"><?php echo $row1['scast']; ?></td>
					</tr>
					
					<tr class="opened">
						<td class="day_label1">color Complextion:</td>
						<td class="day_value"><?php echo $row1['scolour']; ?></td>
					</tr>
					<tr class="opened">
						<td class="day_label1">Marital Status:</td>
						<td class="day_value"><?php echo $row1['sstatus'] ?></td>
					</tr>
					<tr class="closed">
						<td class="day_label1">Manglic Dosh:</td>
						<td class="day_value closed"><span><?php echo $row1['smangal']; ?></span></td>
					</tr>
				    
				    
				    <!-- <tr class="closed">
						<td class="day_label1">Education :</td>
						<td class="day_value closed"><span>Engineering</span></td>
					</tr> -->
			    </tbody>
		   </table>
<div class="buttons">
    <br>
      <?php if($row['sd_verify'] !== "Engaged") { ?>
			   <a href="wait.php?id=<?php echo $row['tbl']; ?>"><div class="vertical">View Profile</div></a>
			   <a href="wait.php?Nsort=<?php echo $row['tbl']; ?> &pg=<?php echo $page ?>"><div class="vertical">Shortlist</div></a>
              <a href="wait.php?ch_mail=<?php echo $row['tbl']?>&pg=<?php echo $page ?>&rst=<?php echo "Hi..<br> I am interested in your profile"; ?>"><div class="vertical">Send Interest</div></a>
		  <?php } else{?> <div class="bg-text1"> <p>ENGAGED... Thank You Onlinerishta </p> </div>	  <?php } ?>  </div>
    <hr><hr>
</div>
<?php 

}
 ?>

 <?php  

$pagLink = "<nav><ul class='pagination'>";  
for ($i=1; $i<=$total_pages; $i++) {  
             $pagLink .= "<li><a href='members.php?page=".$i."'>".$i."</a></li>";  
};  
echo $pagLink . "</ul></nav>";  
?>


        <div class="clearfix"> </div>
    </a></div>
  
        <div class="clearfix"> </div>
    </a></div>
   </div>
   <div class="clearfix"> </div>
  </div>
</div>


</body>
</html>

<?php include 'footer.php' ?>

<script type="text/javascript">

	
  setInterval(function(){ 
  update_last_activity();
 }, 2000);
 
	function update_last_activity()
	{
		$.ajax({
			url:"chat/update_last_activity.php",
			success:function()
			{
			}
		})
	}

	
	
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});


$(document).ready(function(){
$('.pagination').pagination({
        items: <?php echo $total_records;?>,
        itemsOnPage: <?php echo $limit;?>,
        cssStyle: 'light-theme',
		currentPage : <?php echo $page;?>,
 		hrefTextPrefix : 'members.php?page='
    });
	});
	
	
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});


$(document).ready(function(){
 
 function load_unseen_notification(view = '')
 {
  $.ajax({
   url:"mfetch.php",
   method:"POST",
   data:{view:view},
   dataType:"json",
   success:function(data)
   {
    $('#dropdown-menu').html(data.notification);
    if(data.unseen_notification > 0)
    {
     $('.count').html(data.unseen_notification);
    }
   }
  });
 }
 
 load_unseen_notification();
 
 
 $(document).on('click', '.dropdown-toggle', function(){
  $('.count').html('');
  load_unseen_notification('yes');
 });
 
 setInterval(function(){ 
  load_unseen_notification();; 
 }, 2000);
 
});


/*online status*/
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