<?php
include 'session.php';
if(isset($_SESSION['tbl'])&& isset($_SESSION['adm']))
            {   
              $adm=$_SESSION['adm'];
              $_SESSION['ssmob']=$_SESSION['smob'];
  
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
<title>Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content=" " />
<script type="application/x-javascript">
     addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />-->
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />

<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Oswald:300,400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Ubuntu:300,400,500,700' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->

<link rel="stylesheet" href="dist/simplePagination.css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script src='script.js' type='text/javascript'></script>
<script src="dist/jquery.simplePagination.js"></script>
 
 <style>
.bg-image {
  /* Add the blur effect */
  filter: blur(7px);
  -webkit-filter: blur(7px);
  }
  
  .bg-text {
    background-color: rgb(0,0,0);
    background-color: #e82121cf;
    color: #fdfcfc;
    font-weight: normal;
    font-size: x-large;
    border: 0px solid #e62121;
    position: absolute;
    top: 75%;
    left: 50%;
    transform: translate(-50%, -50%);
    z-index: 2;
    max-width: -webkit-fill-available;
    text-align: center;
    padding: 13px;
}
  
      .bg-image1 {
  /* Add the blur effect */
  filter: blur(7px);
  -webkit-filter: blur(7px);
  }
  
  
 
 .bg-text1 {
    background-color: rgb(0,0,0);
    background-color: #e82121cf;
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
</head>
<body>
<!-- ============================  Navigation Start ============================ -->
 <header>
 <div class="navbar navbar-inverse-blue navbar">
    <!--<div class="navbar navbar-inverse-blue navbar-fixed-top">-->
      <div class="navbar-inner">
        <div class="container">
           <div class="navigation">
             <nav id="colorNav">
			   <ul>
				<li class="green">
					<a href="#" class="icon-home"></a>
					<ul>
<!--						<li><a href="login.php">Login</a></li>
					    <li><a href="register.php">Register</a></li>-->
					    <li><a href="logout.php">Logout</a></li>
					</ul>
				</li>
			   </ul>
           
             </nav>
           
           </div>
           <a class="brand" href="profile.php"><img src="images/logo2.png" height="50" width="200"  alt="logo"></a>
           <div class="pull-right">
          	<nav class="navbar nav_bottom" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
		      <div class="navbar-header nav_2">
		       <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">Menu
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#"></a>
	
		   </div> 
		   <!-- Collect the nav links, forms, and other content for toggling -->
		   
		    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
		   
		        <ul class="nav navbar-nav nav_1">
		            <li><a href="profile.php">Home</a></li>
		            <li><a href="adlog.php">ADMIN </a></li>          
                   <li><a href="https://onlinerishta.in/chat">Live Chat</a></li>
		               <?php
                      if($_SESSION["type"] =="9335994716")
                         {
                      ?>
 	                 <li><a href="https://onlinerishta.in/live">Active Users</a></li>
		            <?php
                      } 
		           else{  
		              ?> 
                       <li><a href="https://onlinerishta.in/about.php">About</a></li>

		   <?php            
		           }
		            ?>
		          
		            <li class="dropdown">
		               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Matches<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                <li><a href="newmatch.php">New Matches</a></li>
		                 <li><a href="https://onlinerishta.in/paytm">Membership Plan</a></li> 
		                <li><a href="members.php">Viewed & not Contacted</a></li>
		                <li><a href="members.php">Premium Members</a></li>
		                <!-- <li><a href="shortlisted.html">Shortlisted Profile</a></li> -->
		              </ul>
		            </li>
            <li><a href="profile.php">PRAGYAN SAHU</a></li>
		            <li><a href="http://onlinerishta.in/cnt/">Contact-Us</a></li>
		            <li><a href="logout.php">Logout</a></li>
  	
	<li class="dropdown" >
	  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="label label-pill label-danger count" style="border-radius:30px;"></span> 
	  <span class="glyphicon glyphicon-envelope" style="font-size:25px; vertical-align: top;"></span></a>
       <ul class="dropdown-menu" id='dropdown-menu'></ul>
      </li>
		        </ul>
	  <ul class="nav navbar-nav navbar-right">
      
     </ul>
	
		     </div><!-- /.navbar-collapse -->
		    </nav>
		   </div> <!-- end pull-right -->

		   
          <div class="clearfix"> </div>
        </div> <!-- end container -->
      </div> <!-- end navbar-inner -->
    </div> <!-- end navbar-inverse-blue -->
    </header>
    
<!-- ============================  Navigation End ============================ -->
<div class="grid_3">
  <div class="container">
   
<div class="col-md-12 members_box">
  <div class="col-md-2"><h1><a href="adlog.php?reset=$4%$#&&%">All profile</a></h1></div>
    
    
     <form action="adlog.php"  method="POST">
           <div class="col-md-3 members_box1">
			  <input type="text" name="fmob" id=""  required="" placeholder="Enter Mobile :">
			  <input type="submit" name="f_mob" value="Search">
           </div>
    </form>
    
      
     <form action="adlog.php"  method="POST">
           <div class="col-md-3 members_box1">
			  <input type="text" name="fid" id="sid"  required="" placeholder="Enter Profile ID :">
			  <input type="submit" name="f_id" value="Profile ID">
           <input type="submit" name="f_idi" value="Database ID">
           </div>
    </form>
    
         <form action="adlog.php"  method="POST">
           <div class="col-md-3 members_box1">
			  <input type="text" name="fname" id="fname"  required="" placeholder="Search By Name / surname:">
			  <input type="submit" name="f_name" value="Search">
           </div>
         </form>
  </div>

<!--          <a href="https://onlinerishta.in/live/index.php?x=2"><div class="vertical">Online Users</div></a>-->


<?php  
$j="";

if(isset($_GET['reset']))
{
    $_SESSION['j']="";
    $j="";
}


if(isset($_POST['f_name']))
{
$fn=$_POST['fname'];
$_SESSION['j']="where sd_name LIKE '%$fn%'";

}
$j=" ";
$j=$_SESSION['j'];


if(isset($_POST['f_id']))
{

$fid=substr($_POST['fid'],1)-786;
$j="where tbl = '$fid'";

    
}


if(isset($_POST['f_idi']))
{

$fid=$_POST['fid'];
$j="where tbl = '$fid'";

    
}



if(isset($_POST['f_mob']))
{

 $fmob=$_POST['fmob'];
 $j="where sd_mobile like '%$fmob%'";

}



$stmt = $con->prepare("SELECT COUNT(tbl) as idd FROM sd_client $j"); 
$stmt->execute();
$row = $stmt->fetch(PDO::FETCH_ASSOC);
$total_records = $row['idd'];	
$total_pages = ceil($total_records / $limit);  
$pagLink = "<nav><ul class='pagination'>";

for($i=1; $i<=$total_pages; $i++) {  
        $pagLink .= "<li><a href='adlog.php?page=".$i."'>".$i."</a></li>";  
};

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

    ?>

<?php

$stmt=$con->prepare("SELECT * FROM sd_client $j ORDER BY tbl desc LIMIT $start_from, $limit"); 
$stmt->execute();

while($row = $stmt->fetch(PDO::FETCH_ASSOC))
 {

$y=$row['sd_y'];
$dob=$row['sd_d']." ".$row['sd_m']." ".$row['sd_y'];
$diff = (date('Y') - $y);
?>

	<div  class="profile_top"><a href="wait.php?id=<?php echo $row['tbl']; ?>" >
      
       <h2> <?php $x=$row['tbl']; ?></h2>
	   

	    	   <?php if($row['img1'] == NULL) { ?>
	    	       <div class="col-sm-3 profile_left-top ">
	    	       <img src="<?php echo $row['img2']; ?>" style="width:100%; height:520px" class="img-responsive" alt=""/>
	    	   </div>

	            <?php   }  elseif($row['sd_verify']=="VERIFIED") { ?>
	    	    
	              <div class="col-sm-3 profile_left-top">
	    	      <img src="<?php echo $row['img1']; ?>" style="width:100%; height:520px" class="img-responsive" alt=""/>
	              <div class="bg-text"> <p>Verified Member</p> </div>
                  </div>

	            <?php   }  elseif($row['sd_verify'] == "No") { ?>
	    	    
	              <div class="col-sm-3 profile_left-top bg-image">
	    	      <img src="<?php echo $row['img1']; ?>" style="width:100%; height:520px" class="img-responsive" alt=""/>
	              </div>
	    <div id="bunty">	              
	             <?php   }  elseif($row['sd_verify'] == "Premium") { ?>
	    	    </div>
	              <div class="col-sm-3 profile_left-top ">
	    	      <img src="<?php echo $row['img1']; ?>" style="width:100%; height:520px" class="img-responsive" alt=""/>
	              <div class="bg-text"> <p>Premium member</p> </div>
	              </div>
	              
	              <?php   }  elseif($row['sd_verify'] == "Engaged") { ?>
	    	    
	              <div class="col-sm-3 profile_left-top bg-image">
	    	      <img src="<?php echo $row['img1']; ?>" style="width:100%; height:520px" class="img-responsive" alt=""/>

               <div class="bg-text"> <p>ENGAGED... Thank You Onlinerishta </p> </div>
	              </div>
	              
	              
	           <?php  }  else  {?>
	             <div class="col-sm-3 profile_left-top ">
	             <img src="<?php echo $row['img1']; ?>" style="width:100%; height:520px" class="img-responsive" alt=""/>
	             </div>
               <?php } ?>
 	    
 	    </a>
	   
	    <div class="col-sm-3">
	      <ul class="login_details1">
		<br><br>
			 <li><b>Joined on <?php echo $row['sd_date']."<br>"."Id-".$row['tbl']; ?></b></li>
		
			 

<lable>Verification</lable><br>

     <a href="act.php?vrf=<?php echo $row['tbl']?>&pg=<?php echo $page ?>" >Verified </a>&nbsp;&nbsp;
     <a href="act.php?prm=<?php echo $row['tbl']?>&pg=<?php echo $page ?>" >Premium </a>&nbsp;
     <a href="act.php?nvrf=<?php echo $row['tbl']?>&pg=<?php echo $page ?>" >BLURE(Doubt)</a>
     <a href="act.php?engaged=<?php echo $row['tbl']?>&pg=<?php echo $page ?>" >Engaged</a>



		  </ul>
	    </div>	
	    <a href="wait.php?id=<?php echo $row['tbl']; ?>" >
	    <div class="col-sm-6">
	        <br>
	    	<table class="table_working_hours" >
	        	<tbody>
	        	    	    <h2>Profile Id : <?php echo "D".($x+786); ?></h2>
	        		<tr class="opened_1">
						<td class="day_label1">Name:</td>
						<td class="day_value"><?php echo $row['sd_name']; ?></td>
					</tr>
			
				    <tr class="opened">
						<td class="day_label1">DOB:</td>
						<td class="day_value"><?php echo $dob; ?></td>
					</tr>
					
					<tr class="opened">
						<td class="day_label1">Email:</td>
						<td class="day_value"><?php echo $row['sd_email']; ?></td>
						<a href="wait.php?ch_mail=<?php echo $row['tbl']?>&pg=<?php echo $page ?>">Please Update Email</a> 
							                            <img src="loader.gif" width="30%" />
					</tr>
					
					<tr class="opened">
						<td class="day_label1">Mobile:</td>
						<td class="day_value"><?php echo $row['sd_mobile']; ?></td>
					</tr>
					
				
				    
<?php 

$stmt1=$con->prepare("SELECT * FROM sdetails where did=:did order by did desc"); 
$stmt1->execute(array(':did'=>$x));
$row1 = $stmt1->fetch(PDO::FETCH_ASSOC);
$stmt1 = null;
?>				    
            
            		<tr class="opened_1">
						<td class="day_label1">father Name:</td>
						<td class="day_value"><?php echo $row1['fname']; ?></td>
					</tr>
            
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
						<td class="day_label1">City:</td>
						<td class="day_value"><?php echo $row1['spob'] ?></td>
					</tr>
				    
				    <tr class="opened">
						<td class="day_label1">Marrital Status:</td>
						<td class="day_value"><?php echo $row1['sstatus'] ?></td>
					</tr>
				    
				    
				    <tr class="closed">
						<td class="day_label1">Profile Created by :</td>
						<td class="day_value closed"><span><?php echo $row['look']; ?></span></td>
					</tr>
					    <tr class="closed">
						<td class="day_label1">IP Address :</td>
						<td class="day_value closed"><span><?php echo $row['sd_ip']; ?></span></td>
					</tr>
				    <!-- <tr class="closed">
						<td class="day_label1">Education :</td>
						<td class="day_value closed"><span>Engineering</span></td>
					</tr> -->
			    </tbody>
		   </table>
 

		   <div class="buttons">
		       <br><br><br>

<?php if($row['sd_verify'] !== "Engaged") { ?>
 
  

  
<!--	    <td align='center'><span class='delete' id='del_<?php echo $row['tbl']; ?>'>send</span></td>-->
    <a href="act.php?addel=<?php echo $row['tbl']; ?>"> <div class="vertical">DELETE PROFILE</div></a> 
              <a href="act.php?ch_mail=<?php echo $row['tbl']?>&pg=<?php echo $page ?>&adm=<?php echo "Hi..<br> I am interested in your profile"; ?>"><div class="vertical">Send Interest</div></a>
             <a href="act.php?ch_mail=<?php echo $row['tbl']?>&pg=<?php echo $page ?>&adm=<?php echo "Meaasage From Admin <br> Please Update Your Profile Picture"; ?>"><div class="vertical">Please Update your Picture</div></a>
 <button class='delete' id='del_<?php echo $row['tbl']; ?>' >SEND</button>
		  <?php } else{?>   
		  
		  
		                 <div class="bg-text1"> <p>ENGAGED... Thank You Onlinerishta </p> </div>
		  
		  
		  
		  
		  <?php } ?>
		  
		  
		   </div>

	   <hr><hr>
	    </div>


	   
<?php 

}
 ?>

 <?php  

$pagLink = "<nav><ul class='pagination'>";  
for ($i=1; $i<=$total_pages; $i++) {  
             $pagLink .= "<li><a href='adlog.php?page=".$i."'>".$i."</a></li>";  
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
<?php 

include 'footer.php';


}
            else{ header('Location:members.php');}
             
?>
<script type="text/javascript">


$(document).ready(function(){

    // Delete 
    $('.delete').click(function(){
        var el = this;
        var id = this.id;
        var splitid = id.split("_");

        // Delete id
        var deleteid = splitid[1];
        
        // AJAX Request
        $.ajax({
            url: 'act.php',
            type: 'POST',
            data: { id:deleteid },
            
            success: function(){
          
            $("#bunty").load(" #bunty");
                
            },
        });
    });
});

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
 		hrefTextPrefix : 'adlog.php?page='
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



</script>