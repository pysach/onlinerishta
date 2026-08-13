<?php

include 'session.php';
?>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="">
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <!-- Bootstrap -->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> 
    <!-- jQuery -->
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script> 
     
 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>   
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
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



    <!-- FORM -->
    <?php
    if(isset($_SESSION['email']))
    {
    ?>
    <div class="container" id="loginModal" >
        <div class="row justify-content-center">
            <div class="col-6 p-5 bg-white shadow-lg rounded">

<!--                 <form id="test-form" action="" method="POST"> -->
                    <h2 >ENTER YOUR NEW PASSWORD</h2>
                    <hr>
                    <form id='rst'>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password"  name="pass1" id="pass1" class="form-control" placeholder="Password" >
                        <label for="passwordConfirm">Confirm Password</label>
                        <input type="password" name="pass2" id="pass2"   class="form-control" placeholder="Confirm Password">
                    </div></form>
    <input type="submit" name="" id="sdd" class="btn btn-primary btn-block mt-5" value="RESET PASSWORD" >
                <!-- </form> -->
                
      
   
            </div>
        </div>
    </div>
<?php
}
?>
    <!-- CODE -->



    <!-- Load Validation JS -->
   <script type="text/javascript" src="bs4-form-validation.js"></script>
    <script type="text/javascript">
        let form = new Validation("test-form");
        // Validation Functions
       form.requireText("name", 4, 20, [" "], []);
        form.requireEmail("email", 4, 30, [" "], []);
        form.registerPassword("pass1", 5, 25, [" "], [], "pass2");
 
   

$(document).ready(function(){  
       $('#sdd').click(function(e) {
    e.preventDefault(); // Prevent default form submission if inside a form  
           var u1 = $('#pass1').val();  
           var p1 = $('#pass2').val();  
           if(u1 != '' && p1 != '')  
           { 
               
               if (u1 !== p1) {
                   $('#rst')[0].reset();
                   alert("Passwords do not match");
                   return;
                }

                $.ajax({  
                     url:"action.php",  
                     method:"POST",  
                     data: {user:u1, pass:p1},  
                     success:function(data)  
                     {  
                          //alert(data);  
                          if(data == 'No')  
                          {  
                               alert("Wrong Data");  
                          }  
                          else  
                          {  
                               $('#loginModal').hide();  
                               window.location = 'successful.php';
                               //location.reload(); 
                               
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