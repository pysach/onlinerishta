<?php
include 'session.php';
$date=date("d/m/y"); $time=date("h:i:a");
$g=$_SESSION['sex'];

						     $ask=$_SESSION['tbl'];
                             $stmt=$con->prepare("SELECT conleft FROM sd_client where tbl=:tbl"); 
                               $stmt->execute(array(':tbl'=>$ask,));
                               if($rowc = $stmt->fetch(PDO::FETCH_ASSOC))
                                $_SESSION['conleft']=$rowc['conleft'];



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
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!--<link href='//fonts.googleapis.com/css?family=Oswald:300,400,700' rel='stylesheet' type='text/css'>-->
<link href='//fonts.googleapis.com/css?family=Ubuntu:300,400,500,700' rel='stylesheet' type='text/css'>
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
   

  <div class="col-sm-12 members_box">
  <div class="col-sm-2"><h1><a href="newmatch.php?reset=$4%$#&&%">Refresh</a></h1></div>
  <div class="col-sm-2"><h1><a href="members.php">Premium Members</a></h1></div>     
          <form action="newmatch.php"  method="POST">
           <div class="col-sm-4 members_box1">
			  <input type="text" name="fid" id="sid"  required="" placeholder="Enter Profile ID :">
			  <input type="submit" name="f_id" value="Search">
           </div>
    </form>
         <form action="newmatch.php"  method="POST">
           <div class="col-sm-4 members_box1">
			  <input type="text" name="fname" id="fname"  required="" placeholder="Search By Name / surname:">
			  <input type="submit" name="f_name" value="Search">
           </div>
         </form>
  </div>

<?php include  'ffind.php';  ?>

<?php  

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

$stmt = $con->prepare("SELECT COUNT(tbl) as idd FROM sd_client where sd_sex=:gen $j"); 
$stmt->execute(array(':gen'=>$g));
$row = $stmt->fetch(PDO::FETCH_ASSOC);
$total_records = $row['idd'];
$total_pages = ceil($total_records / $limit);  
$pagLink = "<nav><ul class='pagination'>";
for($i=1; $i<=$total_pages; $i++) {  $pagLink .= "<li><a href='newmatch.php?page=".$i."'>".$i."</a></li>";   };
/*echo $pagLink . "</ul></nav>"; */
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
 $stmt=$con->prepare("SELECT * FROM sd_client where sd_sex IN(:gen) and sd_religion=:rel $j ORDER BY tbl desc LIMIT $start_from, $limit"); 
   $stmt->execute(array(':gen'=>$g,':rel'=>$religion));
   while($row = $stmt->fetch(PDO::FETCH_ASSOC))
    {
$y=$row['sd_y'];
$diff = (date('Y') - $y);
?>

	<div class="profile_top"><a href="wait.php?id=<?php echo $row['tbl']; ?>" >
      <h2> <?php $x=$row['tbl']; ?></h2>
	
    	<?php include 'pic.php';  ?>
    	    <div class="col-sm-3">
                <ul class="login_details1">
                    <br>
    	          <b>Joined on <?php echo $row['sd_date']; ?></b>
    	        </ul>
    	    </div>
	    
	    
	    <div class="col-sm-6">
	        <br><br>
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
         		    <tr class="closed">
						<td class="day_label1">Contact :</a></td>
				   <?php
				   $uid   =$_SESSION['tbl'];
				   $plan = 999;
				   $stmt12=$con->prepare("SELECT RESPMSG FROM paytm where user_id= :uid and price =:price"); 
                   $stmt12->execute(array(':uid'=>$uid,':price'=> $plan));
                   $prp = $stmt12->fetch(PDO::FETCH_ASSOC);
                   //print_r($prp);
                   if(  ($prp['RESPMSG']=='Txn Success') && (  ($row['look'] == 'Myself' ) or ($row['look'] == 'Brother') or ($row['look'] == 'Father' ) or ($row['look'] == 'Relative')) ) { ?>
                      
                      <td class="day_value"><?php echo $row['sd_mobile']; ?></td>
					    
               <?php } 
               
               
               elseif(($prp['RESPMSG']=='Txn Success')&& (($row['look'] =='Friend' ) or ($row['look'] == 'face-Friend')) ){?>
                  
                   		<td class="day_value closed"><span><a href="https://onlinerishta.in/paytm/pro.php">
						    <?php  $mbb=str_split($row['sd_mobile'],5);  echo substr($mbb['0'],0,2)."XXX"."XX".substr($mbb['1'],2); ?></a></span>
						</td>
					</tr>
                     <?php }
               
               
               else {	?>
						<td class="day_value closed"><span><a href="https://onlinerishta.in/paytm/verifyrequest.php">
						    <?php  $mbb=str_split($row['sd_mobile'],5);  echo substr($mbb['0'],0,2)."XXX"."XX".substr($mbb['1'],2); ?></a></span>
						</td>
					</tr>
<?php
}
$stmt1=$con->prepare("SELECT * FROM sdetails where did=:did order by did desc limit 1"); 
$stmt1->execute(array(':did'=>$x));
$row1 = $stmt1->fetch(PDO::FETCH_ASSOC);
?>				    
				    <tr class="opened">
						<td class="day_label1">City:</td>
						<td class="day_value"><?php echo $row1['spob'] ?></td>
					</tr>
                    <tr class="opened">
						<td class="day_label1">Height :</td>
						<td class="day_value"><?php echo $row1['sheight']; ?></td>
					</tr>

                    <tr class="opened">
						<td class="day_label1">Profession :</td>
						<td class="day_value"><?php echo $row1['soccupation']; ?></td>
					</tr>
					
		            <tr class="closed">
						<td class="day_label1">Education :</td>
						<td class="day_value closed"><span><?php echo $row1['sedu']; ?></span></td>
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


			    </tbody>
		   </table>

<div class="buttons">
    
      <?php if($row['sd_verify'] !== "Engaged") { ?>
			   <a href="wait.php?id=<?php echo $row['tbl']; ?>"><div class="vertical">View Profile</div></a>
			   <a href="wait.php?Nsort=<?php echo $row['tbl']; ?> &pg=<?php echo $page ?>"><div class="vertical">Shortlist</div></a>
              <a href="wait.php?ch_mail=<?php echo $row['tbl']?>&pg=<?php echo $page ?>&rst=<?php echo "Hi..<br> I am interested in your profile"; ?>">
                  <div class="vertical">Send Interest</div></a>
		  <?php } else{?> <div class="bg-text1"> <p>ENGAGED... Thank You Onlinerishta </p> </div>	  <?php } ?>  </div>
<hr><hr>
</div>

<?php 

}
 ?>

 <?php  

$pagLink = "<nav><ul class='pagination'>";  
for ($i=1; $i<=$total_pages; $i++) {  
             $pagLink .= "<li><a href='newmatch.php?page=".$i."'>".$i."</a></li>";  
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


$(document).ready(function(){
$('.pagination').pagination({
        items: <?php echo $total_records;?>,
        itemsOnPage: <?php echo $limit;?>,
        cssStyle: 'light-theme',
		currentPage : <?php echo $page;?>,
 		hrefTextPrefix : 'newmatch.php?page='
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
if($_SESSION['type'] !== '9335994716')
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