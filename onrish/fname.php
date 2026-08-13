<?php
include 'connection.php';
include 'session.php';

if (mysqli_connect_errno()) {
    printf("connect failed: %s\n", mysqli_conect_error());
    exit();
}

date_default_timezone_set("Asia/Kolkata"); $date=date("d/m/y"); $time=date("h:i:a"); $g=$_SESSION['sex'];

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
<?php include 'header.php'; ?>
</head>
<body>

<!-- <div class="container" style="padding-top:20px;"> -->
<!-- ============================  Navigation End ============================ -->
<div class="grid_3">
  <div class="container">

<div class="col-md-12 members_box">
  <a href="members.php"><div class="col-md-4"><h1>Back to  Suitable Matches</h1></div></a>
     

     <form action="find.php"  method="POST">
           <div class="col-md-4 members_box1">
			  <input type="text" name="sid" id="sid"  required="" placeholder="Enter Profile ID :">
			  <input type="submit" name="search" value="Search">
           </div>
    </form>
         <form action="members.php"  method="POST">
           <div class="col-md-4 members_box1">
			 <input type="text" name="fname" id="fname"  required="" placeholder="Search By Name / Surname:">
			  <input type="submit" name="find" value="Search">
           </div>
         </form>
  </div>
<?php  

if(isset($_SESSION['find']))
{
$fn=$_SESSION['FN'];
$j='%'.$fn.'%';

}

$row = mysqli_fetch_row(mysqli_query($con, "SELECT COUNT(tbl) FROM sd_client where  sd_name LIKE '$j' "));  
 $total_records = $row[0];  /*count only only tbl not '*' */
 $total_pages = ceil($total_records / $limit);  
$pagLink = "<nav><ul class='pagination'>";
for($i=1; $i<=$total_pages; $i++) {  $pagLink .= "<li><a href='fname.php?page=".$i."'>".$i."</a></li>";   };
echo $pagLink . "</ul></nav>";  
?>

<?php
$rs_result = mysqli_query($con,"SELECT * FROM sd_client where sd_name LIKE '$j'  ORDER BY tbl ASC  LIMIT $start_from, $limit") or die( mysqli_error($con));  

while($row=mysqli_fetch_array($rs_result))
{
$y=$row['sd_y'];
$diff = (date('Y') - $y);
?>

	<div class="profile_top"><a href="wait.php?id=<?php echo $row['tbl']; ?>" >
      <h2> <?php $x=$row['tbl']; ?></h2>
	    
	    <div class="col-sm-3 profile_left-top">
	    	<img src="<?php echo $row['img1']; ?>" style="width:280px;height:414px" class="img-responsive" alt=""/>
	    	<hr><hr>
	    </div>
	    
	    <div class="col-sm-3">
	      <ul class="login_details1">
			 <li><b>Joined on <?php echo $row['sd_date']; ?></b></li>
			 <li><p> </p></li>
		  </ul>
	    </div>	
	    <div class="col-sm-6">
	        	    	<h2>Profile Id : <?php echo "D".($x+786); ?></h2>
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
				    
<?php $row = mysqli_fetch_array(mysqli_query($con,"SELECT * FROM sdetails where did=$x order by did desc  ")); ?>				    
                    <tr class="opened">
						<td class="day_label1">Height :</td>
						<td class="day_value"><?php echo $row['sheight']; ?></td>
					</tr>

                    <tr class="opened">
						<td class="day_label1">Profession :</td>
						<td class="day_value"><?php echo $row['soccupation']; ?></td>
					</tr>
					
					<tr class="opened">
						<td class="day_label1">Cast:</td>
						<td class="day_value"><?php echo $row['scast']; ?></td>
					</tr>
					
					<tr class="opened">
						<td class="day_label1">color Complextion:</td>
						<td class="day_value"><?php echo $row['scolour']; ?></td>
					</tr>
					<tr class="opened">
						<td class="day_label1">Marital Status:</td>
						<td class="day_value"><?php echo $row['sstatus'] ?></td>
					</tr>
					<tr class="closed">
						<td class="day_label1">Manglic Dosh:</td>
						<td class="day_value closed"><span><?php echo $row['smangal']; ?></span></td>
					</tr>
<?php $row = mysqli_fetch_array(mysqli_query($con,"SELECT * FROM sd_client where tbl=$x  order by tbl desc")); ?>
				    
				    
				    <tr class="opened">
						<td class="day_label1">City:</td>
						<td class="day_value"><?php echo $row['sd_city'] ?></td>
					</tr>
					
					
				    <tr class="closed">
						<td class="day_label1">Profile Created by :</td>
						<td class="day_value closed"><span><?php echo $row['look']; ?></span></td>
					</tr>
				    <!-- <tr class="closed">
						<td class="day_label1">Education :</td>
						<td class="day_value closed"><span>Engineering</span></td>
					</tr> -->
			    </tbody>
		   </table>
		   <div class="buttons">
			   <a href="wait.php?id=<?php echo $row['tbl']; ?>"><div class="vertical">View Profile</div></a>
			   <div class="vertical">Shortlisted</div>
			   <div class="vertical">Send Interest</div>
		   </div>
	   <hr><hr>
	    </div>
	   
<?php 

}
 ?>

 <?php  

$pagLink = "<nav><ul class='pagination'>";  
for ($i=1; $i<=$total_pages; $i++) {  
             $pagLink .= "<li><a href='fname.php?page=".$i."'>".$i."</a></li>";  
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
 		hrefTextPrefix : 'fname.php?page='
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

	
	
</script>