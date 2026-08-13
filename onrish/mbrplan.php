<?php

$visited=date('h:i:s Y-m-d');
$ip = $_SERVER['REMOTE_ADDR'];
					$geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$ip"));
                    $country = $geo["geoplugin_countryName"];
                    $city = $geo["geoplugin_city"];
  $to  = 'help@onlinerishta.in,onlinerishtaa@gmail.com';
       $subject="Someone On Board";
       $body =  nl2br("Visited: $visited \r\n IP: $ip \r\n Current City: $city -$country "); //here  nl2br is for new line  
    
       $headers[] = 'MIME-Version: 1.0';
       $headers[] = 'Content-type: text/html; charset=iso-8859-1';
       $headers[] = 'From: Onlinerishta.in <no-reply@Onlinerishta.in>';
      
       mail($to, $subject, $body, implode("\r\n", $headers));

?><html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Onlinerishta.in</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="css/mbrplanstyle.css" rel='stylesheet' type='text/css' />
</head>
<section class="pricing py-5">
<form action="https://onlinerishta.in/register.php" method="post">
 
<div class="backk">    
<input type="button"  value= "BACK" <a href="#" onclick="history.back();" ></a>
</div>

 
  <div class="container">

    <div class="row">
      <!-- Free Tier -->
      <div class="col-lg-4">
        <div class="card mb-5 mb-lg-0">
          <div class="card-body"> <input type="hidden" id="ORDER_ID" tabindex="1" maxlength="20" size="20"name="ORDER_ID" 
         autocomplete="off" value="<?php echo  "ORDS" . rand(10000,99999999)?>">

<?php $_SESSION['ord']="ORDS" . rand(10000,99999999);?>

<input type="hidden" id="INDUSTRY_TYPE_ID" tabindex="4" maxlength="12" size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail">
<input type="hidden" id="CHANNEL_ID" tabindex="4" maxlength="12" size="12" name="CHANNEL_ID" autocomplete="off" value="WEB">

            <h4 class="card-title text-uppercase text-center"><i>## Limited-Time Offer</i> </h4>
            <h6 class="card-price text-center"><i>₹ 151</i><span class="period"> For 6 Month</i></span></h6>
            <hr>
            <ul class="fa-ul">
              <li><span class="fa-li"><i class="fas fa-check"></span>Six Month Membership</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span><strong><em>You will get 3 Verified Profiles Contact Details Of Your Choice</em></strong></li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Send Interest Request </i></li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span><i>Unlimited Profile shortlist</i></li>
              <!--<li class="fa-li"><i class="fas fa-check"></i></span><i>Live Chat</i></li>-->
              <li class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>Dedicated Call Support</li>
            <!-- <li class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>Monthly Status Reports</li>-->
            </ul>
            <button type="submit" onclick="" name="TXN_AMOUNT" value="151" class="btn btn-block btn-primary text-uppercase">Pay Now</button> 
          </div>
        </div>
      </div>
      
      <div class="col-lg-4">
        <div class="card ">
          <div class="card-body">
            <h5 class="card-title  text-uppercase text-center"><i>Prime</h5>
            <h6 class="card-price text-center">₹ 551<span class="period">For 1 Year</span></h6>
            <hr>
            <ul class="fa-ul">
              <li><span class="fa-li"><i class="fas fa-check"></span>One Year Membership</i></li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span><strong><em>You will get 21 Verified Profiles Contact Details Of Your Choice</em></strong></li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Send Interest Request</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Unlimited Profile shortlist</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Dedicated Phone Support</i></li>
              <!--<li><span class="fa-li"><i class="fas fa-check"></i></span>Live Chat</li>-->        
              <!--<li><span class="fa-li"><i class="fas fa-check"></i></span>Dedicated Chat Support</li>-->
            <!--<li class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>Monthly Status Reports</li>-->
            </ul>
       <button type="submit" onclick="" name="TXN_AMOUNT" value="551" class="btn btn-block btn-primary text-uppercase">Pay Now</button>
            
          </div>
        </div>
      </div>
      
      <div class="col-lg-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title  text-uppercase text-center"><i>Premium</h5>
            <h6 class="card-price text-center"><i>₹ 999</i><span class="period"><i>Till Marriage<i> <!--(Limited-Time Offer)--></span></h6>
            <hr>
            <ul class="fa-ul">
               <li><span class="fa-li"><i class="fas fa-check"></i></span> Membership Till Marriage</li>
               <li><span class="fa-li"><i class="fas fa-check"></i></span><strong><em>Profile Access with Contact Details of Unlimited Profiles</em></strong></li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Send Interest Request</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Unlimited Profile shortlist</li>
              <!--<li><span class="fa-li"><i class="fas fa-check"></i></span>Live Chat</li>-->
          <!--<li><span class="fa-li"><i class="fas fa-check"></i></span>Lifetime Membership</li>-->
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Dedicated Phone Support</li>
               <!--<li><span class="fa-li"><i class="fas fa-check"></i></span>Dedicated Chat Support</li>-->
             <!-- <li><span class="fa-li"><i class="fas fa-check"></i></span>Dedicated Weekly profile suggestion</li>-->
              <!--<li><span class="fa-li"><i class="fas fa-check"></i></span>Monthly Status Reports</li>-->
            </ul>
<button type="submit" onclick="" name="TXN_AMOUNT" value="999"  class="btn btn-block btn-primary text-uppercase">Pay Now</button>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>
    </form>
  </body>
</html>

<script>
$(document).ready(function(){

     function location_update()
     {
         
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(showPosition);
          }
     
        function showPosition(position) {
           var x =position.coords.latitude;
           var y=position.coords.longitude;
           var why='On Membership Page';
              $.ajax({
              url:"location.php",
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
</script>

