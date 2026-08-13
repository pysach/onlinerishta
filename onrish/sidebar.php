<?php
date_default_timezone_set("Asia/Kolkata");
include 'connection.php';
 
  $ip = $_SERVER['REMOTE_ADDR'];
					$geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$ip"));
                    $country = $geo["geoplugin_countryName"];
                    $city = $geo["geoplugin_city"];

if(isset($_POST["mob"]))
{
    
$query="INSERT INTO contact(name, mobile,address, messsage,ip,time) values(:name,:mob,:address,:msg,:ip,:time)";    
    
$data1=array(':name'=>$_POST["name"],
             ':mob'=>$_POST["mob"],
             ':address'=>$city."-"."$country",
             ':msg'=>$_POST["msg"],
             ':ip'=>$ip,
             ':time'=>date("d-m-Y h:i:sa")
            );   
          $statement = $con->prepare($query);
    if ( $statement->execute($data1)) {
    
$to  = 'help@onlinerishta.in,onlinerishtaa@gmail.com';
$subject="FROM SIdBAr"."-".$_POST["name"];
$body =  nl2br(" Visitor: ".$_POST['name']."\r\n  MSG: ".$_POST['msg']."\r\n Mobile: ".$_POST['mob']."\r\n  City: $city-$country (IP: $ip) "); //here  nl2br is for new line  

      $headers[] = 'MIME-Version: 1.0';
      $headers[] = 'Content-type: text/html; charset=iso-8859-1';
      $headers[] = 'From: Onlinerishta.in <no-reply@onlinerishta>';
mail($to, $subject, $body, implode("\r\n", $headers));
}
}

?>
<!DOCTYPE html>
<html>
<head>
<style>

    /* ==================== Form Area ======================*/
    .quick-option {
        position: fixed;
        top: 0;
        margin-top: 90px;
        left: 100%;
        background: #fff;
        height: 75%;
        width: 250px;
        max-width: calc(100% - 45px);
        z-index: 100000;
        -webkit-transition: all 0.5s;
        -o-transition: all 0.5s;
        transition: all 0.5s;
    }
    .quick-option.open {
        -webkit-transform: translateX(-100%);
        -ms-transform: translateX(-100%);
        transform: translateX(-100%);
        -webkit-box-shadow: -3px 0 50px -2px rgba(0, 0, 0, 0.14);
        box-shadow: -3px 0 50px -2px rgba(0, 0, 0, 0.14);
    }
    .form-option-wrapper {
        height: 100%;
        overflow-y: auto;
        
    }
    .form-option-wrapper .form-panel-header {
        padding: 40px 30px 30px;
        text-align: center;
        background-color: cornsilk;
    }

    /* ==================== Toolbar Area ======================*/
    .form-toolbar .inner {
        position: absolute;
        top: 200px;
        right: 100%;
        display: block;
        width: 60px;
        border: 1px solid #fff;
        border-right: 0;
        border-radius: 5px 0 0 5px;
        background: #17568f;
        text-align: center;
        -webkit-box-shadow: -3px 0 10px -2px rgba(0, 0, 0, 0.1);
        box-shadow: -3px 0 10px -2px rgba(0, 0, 0, 0.1);
    }
    .form-toolbar .inner a {
    display: block;
    padding: 0px;
    background: #175491f2;
    border-radius: 25px 0px 0px 25px;
    -webkit-transition: all 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
    -o-transition: all 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
    transition: all 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
    }

    /* ==================== Form Design Area ======================*/
    .form-option-wrapper form input[type="text"],
    input[type="email"],
    textarea {
        width: 100%;
        padding: 10px;
        border: 1px solid #e8e6e6;
    }
    .form-option-wrapper form input[type="submit"] {
        background: #24335c;
        color: #fff;
        padding: 10px;
        border: none;
        border-radius: 4px;
    }
    .span12 {
        width: 100% !important;
        margin-bottom: 25px;
    }
</style>


<body>
    <!-- Start Sliding Form  -->
    <div class="quick-option">
        <!-- Start Form Toolbar -->
        <div class="form-toolbar">
            <div class="inner">
                <a class="trigger-option" href="#">
                    <img src="/images/mlogo.svg" width="40px" />
                </a>
            </div>
        </div>
        <!-- End Form Toolbar -->
    
        <!-- Start Quick Form -->
        <div class="form-option-wrapper">
            <div class="form-panel-header">
                <h3>Help Desk</h3>
      <div class="dis">
                <form method="POST" id="cform">
                    <div class="span12">
                        <input id="name" type="text" oninput="this.value = this.value.replace(/[^a-zA-Z. ]/g, '').replace(/(\..*)\./g, '$1');" required maxlength="30" placeholder="Name*" required />
                    </div>
    
                    <div class="span12">
                        <input id="mob" type="text" oninput="this.value = this.value.replace(/[^0-9]/g,'').replace(/(\..*)\./g, '$1');" required maxlength="12" placeholder="Phone number*" required />
                    </div>
    
                    <div class="span12">
                        <textarea id="msg" oninput="this.value = this.value.replace(/[^a-zA-Z. ]/g, '').replace(/(\..*)\./g, '$1');" required maxlength="30" placeholder="Your message**" rows="5" ></textarea>
                    </div>
      </div>
                    <div class="span12">
                        <input type="button" id="send" value="SEND" />
                    </div>
                </form>
            </div>
        </div>
        <!-- End Quick Link -->

    </div>

<script>

$(".trigger-option").on("click", function (e) {
            e.preventDefault(),
                (function () {
                    $formOption.toggleClass("open");
                $('.dis').show();
                $("#send").prop('disabled', false);
                resetForm: true
                //$('#send').val("Send Another Query");    
                })();
        });
    
        var $html = $("html"),
            $formOption = $(".quick-option"),
            $body = $("body");


$(document).ready(function(){
 $('#send').click(function(){

  var name = $('#name').val();
  var mob = $('#mob').val();
  var msg = $('#msg').val();
  
  if($.trim(mob).length > 0 && $.trim(msg).length > 0)
  {
$("#send").prop('disabled', true);
   $.ajax({
    url:"sidebar.php",
    method:"POST",
    data:{name:name, mob:mob, msg:msg},
    cache:false,
    beforeSend:function(){
     $('#send').val("Sending...");
    },
    success:function(data)
    {
     if(data)
     {
     $('#send').val("Thank You...");
     $('.dis').hide();
	 $('#cform')[0].reset();
     //$("#send").prop('disabled', false);
     //$('#sd').hide();
     //window.location = 'task.php';
     //location.reload(); 
     //$("body").load("home.php").hide().fadeIn(1000);
     }
    
     
    }
   });
  }
  else
  {
     alert("Enter Mobile Number and Your Message  ");
  }
 });
});

</script>   
</body>
</html>

