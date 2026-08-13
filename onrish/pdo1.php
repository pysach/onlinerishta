<?php
date_default_timezone_set("Asia/Kolkata");
//$date=date("d/m/Y");
$time=date("h:i:a");    


if(isset($_POST["submit2"]))
{
include 'connection.php';
$message = '';
    
 //sleep(5);
  $query = "INSERT INTO sdetails(did,fname,scolour,sweight,sheight,sstatus,sbody,scast,sbcast,spob,sedu,soccupation,sincome,foccu,moccu,bs,sdate,stime,smangal) VALUES (:did1,:fname, :color, :weight, :height,  :status, :type, :cast, :sub, :live, :edu,  :occu, :income, :foccu, :moccu, :bro,:sdt,:stm,:mangal )";

 $user_data = array(  

  ':did1'  => $x,
  ':fname'  =>$_POST["fname"],
  ':color'  =>$_POST["color"], 
  ':weight'  =>$_POST["weight"],
  ':height'  =>$_POST["height"],
  ':status'  =>$_POST["status"],
    ':type'  =>$_POST["type"],

    ':cast'  =>$_POST["cast"],
     ':sub'  =>$_POST["sub"],
   //':rel'  =>$_POST["rel"],
    ':live'  =>$_POST["live"],
  
     ':edu'  =>$_POST["edu"],
    ':occu'  =>$_POST["occu"],
  ':income'  =>$_POST["income"],
   ':foccu'  =>$_POST["foccu"],  
   ':moccu'  =>$_POST["moccu"],
     ':bro'  =>$_POST["bro"],
  ':sdt'  => $date,
  ':stm'  => $time,
  ':mangal'  =>$_POST["mangal"],
    );

 $statement = $con->prepare($query);
 $statement->execute($user_data);
 
 if($statement)
 {   
    $_SESSION['success']=$_SESSION['mb'];
   // $_SESSION['SHN']=$_SESSION['HN'];
    $_SESSION['comp']=$row['sd_name'];
    header("location:success.php"); 
     
 }
 
 }
?>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

.alert.alert-info, .button
{ 
   max-width: 600px; 
   margin: 40px auto;
   text-align: center;
}

</style>
  <title>Onlinerishta.in</title>

 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <!-- Bootstrap CSS -->
   <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">-->
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />

<!--  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />-->
</head>
<body>
 

<!-- <div class="button">
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Launch demo modal
</button>


</div> -->


 <form action="" method="POST">

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Please Fill Your Details</h4>
      
      </div>
      
     
    <div class="modal-body">
    
           <div class="modal-split">
              <div class="col-md-12 form-group pr-md-1">
              <!-- <label>Height:</label> -->
              <select name="height" value=""  class="form-control"> 
              <option value=""><label>Height:</label></option>
              <option value="4 Feet">4 Feet</option>
              <option value="4 Feet 1inch">4 Feet 1inch</option>
              <option value="4 Feet 2inch">4 Feet 2inch</option>
              <option value="4 Feet 3inch">4 Feet 3inch</option>
              <option value="4 Feet 4inch">4 Feet 4inch</option>
              <option value="4 Feet 5inch">4 Feet 5inch</option>
              <option value="4 Feet 6inch">4 Feet 6inch</option>
              <option value="4 Feet 7inch">4 Feet 7inch</option>
              <option value="4 Feet 8inch">4 Feet 8inch</option>
              <option value="4 Feet 9inch">4 Feet 9 inch</option>
              <option value="4 Feet 10inch">4 Feet 10 inch</option>
              <option value="4 Feet 11inch">4 Feet 11 inch</option>
              <option value="5 Feet ">5 Feet </option>
              <option value="5 Feet 2 inch">5 Feet 1inch</option>
              <option value="5 Feet 2 inch">5 Feet 2inch</option>
              <option value="5 Feet 3 inch">5 Feet 3inch</option>
              <option value="5 Feet 4 inch">5 Feet 4inch</option>
              <option value="5 Feet 5 inch">5 Feet 5inch</option>
              <option value="5 Feet 6 inch">5 Feet 6inch</option>
              <option value="5 Feet 7 inch">5 Feet 7inch</option>
              <option value="5 Feet 8 inch">5 Feet 8inch</option>
              <option value="5 Feet 9 inch">5 Feet 9inch</option>
              <option value="5 Feet 10 inch">5 Feet 10inch</option>
              <option value="5 Feet 11 inch">5 Feet 11inch</option>
              <option value="6 Feet ">6 Feet </option>
              <option value="6 Feet 1 inch">6 Feet 1 inch</option>

              </select>
            <!-- <div class="validate"></div> -->
            </div>



           <div class="col-md-12 form-group pr-md-1">
              <!-- <label>Complexion (Color):</label> -->
              <select name="color" value=""  class="form-control"> 
              <option value="">Select Complexion: (Color)</option>
              <option value="Fair">Fair</option>
              <option value="Very Fair">Very Fair</option>
              <option value="Wheatish">Wheatish</option>
              <option value="Dusky">Dusky </option>
              </select>
            </div>

<div class="col-md-12 form-group pr-md-1"> 
              <!-- <label>Weight:</label> -->             
              <select name="weight" value=""  class="form-control"> 
              <option value="">Select Weight:</option>
              <option value="50-60 Kg">50-55 Kg</option>
              <option value="50-60 Kg">55-60 Kg</option>
              <option value="60-70 Kg">60-65 Kg</option>
              <option value="60-70 Kg">65-70 Kg</option>
              <option value="70-80 Kg">70-75 Kg</option>
              <option value="80-90 Kg">75-80 Kg</option>
              <option value="90-100 Kg">80-85 Kg</option>
              <option value="100-150 Kg">85-90 Kg</option>
              <option value="100-150 Kg">90-95 Kg</option>
              <option value="100-150 Kg">95-100 Kg</option>
              </select>
            <!-- <div class="validate"></div> -->
            </div>

<div class="col-md-12 form-group pr-md-1"> 
              <!-- <label>Body Type:</label>          -->    
              <select name="type" value="" class="form-control"> 
              <option value="">Select Body Type:</option>
              <option value="Fit">Fit</option>
              <option value="slim">slim</option>
              <option value="Healthy">Healthy</option>
              <option value="Athletic">Athletic</option>
               <option value="Skinny">Skinny</option>
              <option value="Weak">Weak</option>
              </select>
            <!-- <div class="validate"></div> -->
            </div>


<div class="col-md-12 form-group pr-md-1"> 
              <!-- <label>Body Type:</label>          -->    
              <select name="mangal" value="" class="form-control"> 
              <option value="No">Select Manglik Dosh:</option>
              <option value="No">No</option>
              <option value="Yes">Yes</option>
              
              </select>
            <!-- <div class="validate"></div> -->
            </div>

<div class="col-md-12 form-group pr-md-1"> 
             <!--  <label>Marital Status:</label>          -->    
              <select name="status" value="" class="form-control"> 
              <option value="">Select Marital Status:</option>
              <option value="Never Married">Never Married</option>
              <option value="Divorced">Divorced</option>
              <option value="Widowed">Widowed</option>
              <option value="Divorce In Process">Divorce In Process</option>
               
              </select>
            <!-- <div class="validate"></div> -->
            </div>
   </div>
         <div class="modal-split">
             <div class="form-group">
         <label>Cast:</label>
         <input type="text" name="cast" id="" placeholder="Enter CAST :" class="form-control" />
         <!-- <span id="error_first_name" class="text-danger"></span> -->
        </div>

             <div class="form-group">
         <label>Sub Cast:</label>
         <input type="text" name="sub" id="" placeholder="Enter Sub Cast :" class="form-control" />
         <!-- <span id="error_first_name" class="text-danger"></span> -->
        </div>

             <div class="form-group">
         <label>Father's Name:</label>
         <input type="text" name="fname" id="" placeholder="Enter Father's Name :" value=" " class="form-control" />
         <!-- <span id="error_first_name" class="text-danger"></span> -->
        </div>

         <div class="form-group">
         <label>Family Lives In:</label>
         <input type="text" name="live" id="" placeholder="Enter City : " class="form-control" />
         <!-- <span id="error_first_name" class="text-danger"></span> -->
        </div>
         <div class="form-group">
         <label>Siblings:</label>
         <input type="text" name="bro" id="" placeholder="Enter No of brother and sister :" class="form-control" />
         <!-- <span id="error_first_name" class="text-danger"></span> -->
        </div>

</div>
    
   
    <div class="modal-split">

        <div class="form-group">
         <label>Highest Education & Stream</label>
        <select name="edu" class="form-control"> 
              <option value="">Select</option>
              <option value="B.Tech/BE">B.Tech/BE</option>
              <option value="B.A">B.A</option>
              <option value="BAMS/BUMS">BAMS/BUMS </option>
              <option value="BCA">BCA</option>
              <option value="B.Com">B.Com</option>
              <option value="BDS">BDS</option>
              <option value="B.Ed">B.Ed</option>
              <option value="BSC">BSC</option>
              <option value="BTC">BTC</option>


              <option value="Fine Arts">Fine Arts</option>
              
              <option value="Hotel Management">Hotel Management</option>
              <option value="ITI/Diploma">ITI/Diploma</option>
              <option value="Law">Law</option>
              <option value="MA">MA</option>
              <option value="MBBS/MD">MBBS/MD</option>
              <option value="MBA">MBA</option>
              <option value="MCA">MCA</option>
              <option value="M.Com">M.Com</option>
              <option value="M.Tech">M.Tech</option>
              <option value="M.Ed">M.Ed</option>
              <option value="MS">MS</option>
              <option value="MSC">MSC</option>
              <option value="Nursing">Nursing </option>
              <option value="PGC">PGC </option>
              <option value="PGDCA">PGDCA </option>
              <option value="PGDM">PGDM </option>
              <option value="Phd">Phd </option>
              <option value="Pharmacy">Pharmacy</option>
              
              <option value="HighSchool">HighSchool</option>
              <option value="Intermediate">Intermediate</option>
              <option value="Other">Other</option>
              </select>
        </div>

        <div class="form-group">
         <label>Occupation:</label>
         <select name="occu" value="" class="form-control"> 
              <option value="">Select</option>
              <option value="Business">Business</option>
              <option value="Private Job">Private Job</option>
              <option value="Gov.Job ">Gov.Job </option>
              <option value="Unemployed">Unemployed</option>
              <option value="Civil Services">Civil Services</option>
               
              </select>
        </div>

        <div class="form-group">
         <label>Annual Income:</label>
         <select name="income" value="Looking For" class="form-control"> 
              <option value="">Select</option>
              <option value="1-3 Lacs">₹ 1-3 Lacs</option>
              <option value="3-5 Lacs">₹ 3-5 Lacs</option>
              <option value="5-7 Lacs">₹ 5-7 Lacs </option>
              <option value="7-10 Lacs">₹7-10 Lacs</option>
              <option value="10-15 Lacs">₹ 10-15 Lacs </option>
              <option value="15-20 Lacs">₹ 15-20 Lacs</option>
              <option value="20-40 Lacs">₹ 20-40 Lacs</option>
              <option value="40-80 Lacs">₹ 40-80 Lacs</option>
              <option value="1 Crore">₹ 1 Crore</option>
               
              </select>

</div>
        <div class="form-group">
         <label>Father's Occupation : :</label>
         <select name="foccu" value="" class="form-control"> 
              <option value="Farmer">Select</option>
              <option value="Farmer">Farmer</option>
              <option value="Business Person">Business Person </option>
              <option value="Private Job">Private Job</option>
              <option value="Gov.Job ">Gov.Job </option>
              <option value="Ex.SeviceMan">Ex.SeviceMan</option>
              <option value="Civil Services">Civil Services</option>

      </select>
      </div>
                      <div class="form-group">
         <label>Mother's Occupation : </label>
         <select name="moccu"  class="form-control"> 
              <option value="House Wife">Select</option>
              <option value="House Wife">House Wife</option>
              <option value="Business Women">Business Women</option>
              <option value="Private Job">Private Job</option>
              <option value="Gov.Job ">Gov.Job </option>
              <option value="Ex.SeviceMan">Ex.SeviceMan</option>
              <option value="Civil Services">Civil Services</option>
               
              </select>




        </div>





<input type="submit" class="btn btn-primary" name="submit2">
      </form>
           </div>  
  
    </div>



      <div class="modal-footer">



 <!--Nothing Goes Here but is needed! -->
      </div>

    </div>

  </div>
</div>

<!--   <div class="alert alert-info">
   EX: (These divs go in the modal-body) <br><code>&lt;div class=&quot;modal-split&quot;&gt; Page 1 content goes here &lt;/div&gt;<br>&lt;div class=&quot;modal-split&quot;&gt; Page 2 content goes here &lt;/div&gt;<br>&lt;div class=&quot;modal-split&quot;&gt; and so on  &lt;/div&gt;</code>
  </div>

 -->




    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  
   <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>-->
  
    <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>-->


</body>
</html>



<script type="text/javascript">

$(document).ready(function() {
  prep_modal();
});

function prep_modal()
{
  $(".modal").each(function() {

  var element = this;
  var pages = $(this).find('.modal-split');

  if (pages.length != 0)
  {
      pages.hide();
      pages.eq(0).show();

      var b_button = document.createElement("button");
                b_button.setAttribute("type","button");
                b_button.setAttribute("class","btn btn-primary");
                b_button.setAttribute("style","display: none;");
                b_button.innerHTML = "Back";

      var n_button = document.createElement("button");
                n_button.setAttribute("type","button");
                n_button.setAttribute("class","btn btn-primary");
                n_button.innerHTML = "Next";

      $(this).find('.modal-footer').append(b_button).append(n_button);


      var page_track = 0;

      $(n_button).click(function() {
        
        this.blur();

        if(page_track == 0)
        {
          $(b_button).show();
        }

        if(page_track == pages.length-2)
        {
          $(n_button).text("");
        }

        if(page_track == pages.length-1)
        {
          $(element).find("form").submit();
        }

        if(page_track < pages.length-1)
        {
          page_track++;

          pages.hide();
          pages.eq(page_track).show();
        }


      });

      $(b_button).click(function() {

        if(page_track == 1)
        {
          $(b_button).hide();
        }

        if(page_track == pages.length-1)
        {
          $(n_button).text("Next");
        }

        if(page_track > 0)
        {
          page_track--;

          pages.hide();
          pages.eq(page_track).show();
        }


      });

  }

  });
}

</script>