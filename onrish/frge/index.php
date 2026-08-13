<?php
ob_start();
session_start();
if(isset($_SESSION['logged_email'])){
    
   $_SESSION['email']= $_SESSION['logged_email'];
    
}
?>


<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="">
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <!-- Bootstrap -->
   <!--  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> -->
    <!-- jQuery -->
    <!-- <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script> -->
     
<!--     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
     -->
<!--     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script> -->
    <!-- Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

           <script src="js/jquery-3.5.0.min.js"></script>  
           <link rel="stylesheet" href="css/bootstrap.min.css" /> 
           <script src="js/bootstrap.js"></script> 

<title>Onlinerishta.in</title>
    <style>
        label {
            margin-bottom: 0.1em;
            margin-top: 0.5em;
        }
        .container { margin: 150px auto; }
    </style>
</head>

<body class="bg-info">
    <div class="container" >
        <div class="row justify-content-center">
            <div class="col-6 p-5 bg-white shadow-lg rounded">

                <form id="test-form" method="post" action="process.php">
                    <h2 style="text-align: center;">Reset Your Password</h2>
                    <hr>
<!--<div class="wrapper">
  
  <div class="container">
-->      
    <div >
    
    <?php

    if(isset($_SESSION['error']))
    {
      
      ?>
        <div class="alert alert-danger">
          <strong><?php echo $_SESSION['error']; ?></strong>
        </div>
            <?php
                    unset($_SESSION['error']); 
    }
    if(isset($loginMsg))
    {
    ?>
      <div class="alert alert-success">
        <strong><?php echo $loginMsg; ?></strong>
      </div>
        <?php
    }
    ?>
                    
                    <div class="form-group">
                        <label for="email" >Enter Your Email Registered With Us</label>
             <input type="email" name="email" id="email"  value="<?php echo $_SESSION['email']; ?>" class="form-control" placeholder="You will Get OTP on This Email">
             <label for="mobile" >Enter Your Registered User I'd</label>
             <input type="text" name="mob" id="mob" value="<?php echo $_SESSION['mb']; ?>" class="form-control" placeholder="Registered Mobile">
           
          <input type="submit" name="save" id="save" class="btn btn-primary btn-block mt-5" value=" SEND OTP">
                    

 
                </form>

            </div>
        </div>
    </div>


    <!-- CODE -->



    <!-- Load Validation JS -->
 <!--    <script src="http://api.jquery.com/jQuery.ajax/"></script -->
    <script type="text/javascript" src="bs4-form-validation.js"></script>
    <script type="text/javascript">
        let form = new Validation("test-form");
        // Validation Functions
      form.requireText("name", 4, 20, [" "], []);
        form.requireEmail("email", 4, 50, [" "], []);
        form.registerPassword("mob", 9, 11, [" "], []);


$(document).ready(function(){  
      $('#').click(function(){  
           var u1 = $('#email').val();  
           var p1 = $('#mob').val();  
           if(u1 != '' && p1 != '')  
           {  
                $.ajax({  
                     url:"process.php",  
                     method:"POST",  
                     data: {email:u1, mob:p1},  
                     success:function(data)  
                     {  
                          //alert(data);  
                          if(data == 'No')  
                          {  
                               alert("Wrong Data");  
                          }  
                          else  
                          {  
                          //     $('#loginModal').hide();  
                               window.location = otp.php;
                               location.reload(); 
                               
                          }  
                     }  
                });  
           }  
           else  
           {  
                alert("Both Fields are required");  
           }  
      });  
     
     /* $('#logout').click(function(){  
           var out = "logout";  
           $.ajax({  
                url:"action.php",  
                method:"POST",  
                data:{action:out},  
                success:function()  
                {  
                     location.reload();  
                }  
           });  
      });*/  
 });  



    </script>




</body>
</html>