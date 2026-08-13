<?php
header("Pragma: no-cache");
header("Cache-Control: no-cache");
header("Expires: 0");

session_start();
$visited=date('h:i:s Y-m-d');
$ip = $_SERVER['REMOTE_ADDR'];
					$geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$ip"));
                    $country = $geo["geoplugin_countryName"];
                    $city = $geo["geoplugin_city"];
  
     /*  $to  = 'help@onlinerishta.in';
       $subject="Hi..Sachin Plz Be ready...";
       $body =  nl2br("Visited On: $visited \r\n IP: $ip \r\n Current City: $city -$country "); //here  nl2br is for new line  
    
       $headers[] = 'MIME-Version: 1.0';
       $headers[] = 'Content-type: text/html; charset=iso-8859-1';
       $headers[] = 'From: Google <no-reply@Onlinerishta.in>';
      
       mail($to, $subject, $body, implode("\r\n", $headers));*/

if(isset($_SESSION['tbl'])) //check condition user login not direct back to index.php page
{
  header("Location: profile.php");

}
?>
<!DOCTYPE HTML>
<html lang="en">
<head>
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1334135800052707"
     crossorigin="anonymous"></script>
<title>onlinerishta.in</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" >
<meta name="descriptison" content="" >

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!--<link href='//fonts.googleapis.com/css?family=Oswald:300,400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Ubuntu:300,400,500,700' rel='stylesheet' type='text/css'>-->
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->

<body>
    
<?php include 'head.php'; ?>
</head>
<!-- ============================  Navigation End ============================ -->

<div class="banner">
  <div class="container">
        <div class="banner_info">
           <h3>Thousands of verified Members</h3>
           
           <!-- <div> <h4 style="font-style: italic;">We Make Relation Not Money</h4></div> -->
          <div class="front" style="margin-left: 50px;">
            <a href="register.php" class="hvr-shutter-out-horizontal">Register With Us For Free</a>
            <a href="login.php" class="hvr-shutter-out-horizontal"> Login</a>
<div class="otp-divider">OR</div>
    
    
    <!--Login POP UP-->
    
<?php include "otp/index_login.php"; ?>





</div>

</div>


        </div>

    </div>
      <!-- tranparent contact us  form --> 

</div> 
<hr>
<div class="grid_2">
  <div class="container">
    <h2> Success Stories</h2>
        <div class="heart-divider">
      <span class="grey-line"></span>
      <i class="fa fa-heart pink-heart"></i>
      <i class="fa fa-heart grey-heart"></i>
      <span class="grey-line"></span>
        </div>
        <div class="row_1">
       <div class="col-md-8 suceess_story">
           <ul> 
              <li>
            <div class="suceess_story-date">
            <span class="entry-1">DEC 4, 2020</span>
          </div>
          <div class="suceess_story-content-container">
            <figure class="suceess_story-content-featured-image">
               <img width="150" height="150" src="img/m2.jpg" class="img-responsive" alt=""/> 
                <!-- <img width="75" height="75" src="img.jpg" class="img-responsive" alt=""/>   -->                 
              </figure>
            <div class="suceess_story-content-info">
                  <h4><a href="#"></a>Nikunj & Pratibha</h4>                  
                  <p>Thank you Onlinerishta...<a href="#">More...</a></p>
                </div>
            </div>
        </li>

    <li>
            <div class="suceess_story-date">
            <span class="entry-1">NOV 14, 2020</span>
          </div>
          <div class="suceess_story-content-container">
            <figure class="suceess_story-content-featured-image">
               <img width="150" height="150" src="img/m12.jpg" class="img-responsive" alt=""/> 
                <!-- <img width="75" height="75" src="img.jpg" class="img-responsive" alt=""/>   -->                 
              </figure>
            <div class="suceess_story-content-info">
                  <h4><a href="#"></a>Vishal & Ritika</h4>                  
                  <p>Thank you Onlinerishta...<a href="#">More...</a></p>
                </div>
            </div>
        </li>


         <li>
            <div class="suceess_story-date">
            <span class="entry-1">APR 26, 2020</span>
          </div>
          <div class="suceess_story-content-container">
            <figure class="suceess_story-content-featured-image">
               <img width="75" height="75" src="img/rohit.jpg" class="img-responsive bg-image" alt=""/>
                <img width="75" height="75" src="img/shalini.jpg" class="img-responsive bg-image" alt=""/>                   
              </figure>
            <div class="suceess_story-content-info">
                  <h4><a href="#">Rohit & Shalini</a></h4>                  
                  <p>Thank you Onlinerishta...<a href="#">More...</a></p>
                </div>
            </div>
        </li>
             
             

          </ul>
      </div>      
      <div class="col-md-4 row_1-right">
       
      <section class="slider">
   <h3>Happy Marriage</h3>
   <div class="flexslider">
    <ul class="slides">
     
      <li>
      <img src="img/m12.jpg" alt=""/>
      <h3>Vishal with Ritika</h3>
      <p>I found the best half of my life through your site. Thank you and best of luck to you.</p>
      </li>
     
      <li>
      <img src="img/m2.jpg"   alt=""/>
      <h3>Nikung Weds Pratibha</h3>
      <p>Thank a lot...Onlinerishta</p>
      </li>
     
      <li>
      <img width="75" height="0" src="img/rohit.jpg" class="bg-image" alt=""/>
      
      <h3>Rohit and Shalini</h3>
      <p>Hi Onlinerishta.in Team Thank you very much, I have found my life partner with your help</p>
      </li>
      </ul>
    </div>
   </section>

          </div>
       </div>
       <div class="clearfix"> </div>
     </div> 
    </div>
    </div>

    <div class="bg">
    <div class="container"> 
      <h3>Guest Messages</h3>
      <div class="heart-divider">
        <span class="grey-line"></span>
        <i class="fa fa-heart pink-heart"></i>
        <i class="fa fa-heart grey-heart"></i>
        <span class="grey-line"></span>
            </div>
            <div class="col-sm-6">
              <div class="bg_left">
                <h4>My Message</h4>
                <h5>Friend of Bride</h5>
                <p>"Marriage is a beautiful thing when done correctly.</p>
                 <ul class="team-socials">
                    <li><a href="#"><span class="icon-social "><i class="fa fa-facebook"></i></span></a></li>
                    <li><a href="#"><span class="icon-social "><i class="fa fa-twitter"></i></span></a></li>
                    <li><a href="#"><span class="icon-social"><i class="fa fa-google-plus"></i></span></a></li>
                   </ul>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="bg_left">
                <h4>My View</h4>
                <h5>Friend of Groom</h5>
                <p>"A Great marriage is not when the 'Perfect Couple' come Together. It is when an imperfect couple learns to enjoy their differences. "</p>
                 <ul class="team-socials">
                    <li><a href="#"><span class="icon-social "><i class="fa fa-facebook"></i></span></a></li>
                    <li><a href="#"><span class="icon-social "><i class="fa fa-twitter"></i></span></a></li>
                    <li><a href="#"><span class="icon-social"><i class="fa fa-google-plus"></i></span></a></li>
                   </ul>
              </div>
            </div>
            <div class="clearfix"> </div>
    </div>
  </div>
<br>
   <?php include "footer.php";  ?>
   
<!-- FlexSlider -->
 <link href="css/flexslider.css" rel='stylesheet' type='text/css' />
  <script defer src="js/jquery.flexslider.js"></script>
  <script src="js/jquery.min.js"></script>

  <script type="text/javascript">
  
  
  $(document).ready(function(){

     function location_update()
     {
         
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(showPosition);
          }
     
        function showPosition(position) {
           var x =position.coords.latitude;
           var y=position.coords.longitude;
           var why="Index Page";
              $.ajax({
              url:"/location.php",
              method:"POST",
              data:{x:x, y:y, why:why},
              cache:false,
                
                success:function(data)      {   }
            });
        }
    
      }

    location_update();
    
    setInterval(function(){ 
      location_update(); 
     }, 2000);


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
  
  $(function(){
    SyntaxHighlighter.all();
  });
  $(window).load(function(){
    $('.flexslider').flexslider({
    animation: "slide",
    start: function(slider){
      $('body').removeClass('loading');
    }
    });
  });
  
/*   Javascript for date and time*/
    
               var currentdate = new Date(); 
               var datetime = "Last Sync: " + currentdate.getDate() + "/"
                + (currentdate.getMonth()+1)  + "/" 
                + currentdate.getFullYear() + " @ "  
                + currentdate.getHours() + ":"  
                + currentdate.getMinutes() + ":" 
                + currentdate.getSeconds();
/*    for date and time*/

   var track = {
      // (B) PROPERTIES & SETTINGS
      rider : datetime, // Rider ID - Fixed to 999 for this demo.
      delay : 10000, // Delay between GPS update, in milliseconds.
      timer : null, // Interval timer.
      display : null, // HTML <div> element.

      // (C) INIT
      init : () => {
        // (C1) GET HTML DISPLAY
        track.display = document.getElementById("display");

        // (C2) CHECK GPS SUPPORT + START TRACKING
        if (navigator.geolocation) {
          track.update();
          track.timer = setInterval(track.update, track.delay);
        } else { track.display.innerHTML = "Geolocation not supported!"; }
      },

      // (D) UPDATE CURRENT LOCATION TO SERVER
      update : () => {
              navigator.geolocation.getCurrentPosition(
    
      // (D1) OK - SEND GPS COORDS TO SERVER
                  (pos) => {
                    // LOCATION DATA
                    var data = new FormData();
                    data.append("req", "update");
                    data.append("rider_id", track.rider);
                    data.append("lat", pos.coords.latitude);
                    data.append("lng", pos.coords.longitude);

            // AJAX FETCH
            fetch("/xyz/gps/2b-ajax-track.php", { method:"POST", body:data })
            .then(res => res.json()).then((res) => {
              if (res.status==1) {
//Before

/*                track.display.innerHTML = Date.now() +
                                          " | Lat: " + pos.coords.latitude +
                                          " | Lng: " + pos.coords.longitude;
*/

//Replaced
        
                // track.display.innerHTML = datetime;   


              /* track.display.innerHTML = datetime +
                                          " <Br><Br> Lat:Long <Br><Br>" + pos.coords.latitude+","+pos.coords.longitude;*/
  //End                       
                                          
              } else { track.display.innerHTML = res.message; }
            }).catch((err) => { console.error(err); });
          },

          // (D2) ERROR
          (err) => {
            console.error(err);
            track.display.innerHTML = err.message;
            clearInterval(track.timer);
          }
        );
      }
    };
    window.addEventListener("DOMContentLoaded", track.init);
  
  
  
  
  </script>
<!-- FlexSlider -->

</body>
</html>