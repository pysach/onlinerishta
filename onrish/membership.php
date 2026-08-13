<?php

include 'session.php';
?>

<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Onlinerishta.in</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <link rel="stylesheet" type="text/css" href="style.css">


</head>

<style type="text/css">
  
.btn-primary {
    color: #fff;
    background-color: #18919d;
    border-color: #f4f6f8;
}
section.pricing {
  
  background: linear-gradient(to right, #162f52f7, #2c6387);
}

.pricing .card {
  border: none;
  border-radius: 1rem;
  transition: all 0.2s;
  box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
}

.pricing hr {
  margin: 1.5rem 0;
}

.pricing .card-title {
  margin: 0.5rem 0;
  font-size: 0.9rem;
  letter-spacing: .1rem;
  font-weight: bold;
}

.pricing .card-price {
  font-size: 3rem;
  margin: 0;
}

.pricing .card-price .period {
  font-size: 0.8rem;
}

.pricing ul li {
  margin-bottom: 1rem;
}

.pricing .text-muted {
  opacity: 0.7;
}

.pricing .btn {
  font-size: 80%;
  border-radius: 5rem;
  letter-spacing: .1rem;
  font-weight: bold;
  padding: 1rem;
  opacity: 0.7;
  transition: all 0.2s;
}
.backk{
    
    padding: 0px 0px 0px 32px;
    
}


/* Hover Effects on Card */

@media (min-width: 992px) {
  .pricing .card:hover {
    margin-top: -.25rem;
    margin-bottom: .25rem;
    box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.3);
  }
  .pricing .card:hover .btn {
    opacity: 1;
  }
}

</style>

<section class="pricing py-5">

<form action="pay/index.php" method="post">
<div class="backk">    
<input type="button"  value= "Back" <a href="#" onclick="history.back();" ></a>
</div>


  <div class="container">
    <div class="row">
      <!-- Free Tier -->
      <div class="col-lg-4">
        <div class="card mb-5 mb-lg-0">
          <div class="card-body">
            <h5 class="card-title text-muted text-uppercase text-center">## Lockdown Offer</h5>
            <h6 class="card-price text-center">₹ 251<span class="period">Unlimited Verified Profile  </span></h6>
            <hr>
            <ul class="fa-ul">
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Lifetime Membership</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Unlimited Profile shortlist</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Send Interest Request</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Community Access</li>
               <li><span class="fa-li"><i class="fas fa-check"></i></span>Profile Access with Contact Details Of Unlimited <strong>Verified Profile </strong> only</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Dedicated Chat Support</li>
              <li class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>Dedicated Phone Support</li>
             <li class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>Monthly Status Reports</li>
            </ul>
           <button name="amt" type="submit" value="251" class="btn btn-block btn-primary text-uppercase">Pay Now</button>
<!--           <input type="submit" value="500" name="amount" class="btn btn-block btn-primary text-uppercase">-->
        
          </div>
        </div>
      </div>
      <!-- Plus Tier -->
      <div class="col-lg-4">
        <div class="card mb-5 mb-lg-0">
          <div class="card-body">
            <h5 class="card-title text-muted text-uppercase text-center">Prime</h5>
            <h6 class="card-price text-center">₹ 500<span class="period">For 3 month</span></h6>
            <hr>
            <ul class="fa-ul">
<li><span class="fa-li"><i class="fas fa-check"></i></span>Lifetime Membership</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Unlimited Profile shortlist</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Send Interest Request</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Community Access</li>             
              <li><span class="fa-li"><i class="fas fa-check"></i></span><strong>Full Profile Access with Contact Details of any 5 Profile</strong></li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Dedicated Chat Support</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Dedicated Phone Support</li>
              <li class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>Monthly Status Reports</li>
            </ul>
                       <button name="amt" type="submit" value="500" class="btn btn-block btn-primary text-uppercase">Pay Now</button>
<!--            <input type="submit" value="500" name="amount" class="btn btn-block btn-primary text-uppercase">-->
            
          </div>
        </div>
      </div>
      <!-- Pro Tier -->
      <div class="col-lg-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title text-muted text-uppercase text-center">Premium</h5>
            <h6 class="card-price text-center">₹ 1000<span class="period">For 6  month</span></h6>
            <hr>
            <ul class="fa-ul">
<li><span class="fa-li"><i class="fas fa-check"></i></span>Lifetime Membership</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Unlimited Profile shortlist</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Send Interest Request</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Community Access</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span><strong>Full Profile Access with Contact Details of any 15  Profile</strong></li>
               <li><span class="fa-li"><i class="fas fa-check"></i></span>Dedicated Chat Support</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Dedicated Phone Support</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Monthly Status Reports</li>
            </ul>
            <button name="amt" type="submit" value="1000" class="btn btn-block btn-primary text-uppercase">Pay Now</button>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>

    </form>
  </body>
</html>

   <script type="text/javascript" src="jquery.js"></script>


