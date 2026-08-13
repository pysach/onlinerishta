
<?php include 'sidebar.php';   ?>    
    <div class="footer">

    	<div class="container">
    		
    		<div class="col-md-4 col_2">
    			<h4>About Us</h4>
    			<p>"We have been making memorable memories through matchmaking for more than 35 years For Free.<br> It all began with creating many successful marriages & remarriage for family and friends in our state."</p>
    		</div>
    		
    		<div class="col-md-2 col_2">
    			<h4>Help & Support</h4>
    			<ul class="footer_links">
    				<li><a href="http://onlinerishta.in/about.php">About Us</a></li>
    				<li><a href="http://onlinerishta.in/cnt/">Contact us</a></li>
    				<li><a href="http://onlinerishta.in/cnt/">Feedback</a></li>
    			<!--	<li><a href="#">FAQs</a></li>-->
    			</ul>
    		</div>
    		<div class="col-md-2 col_2">
    			<h4>Quick Links</h4>
    			<ul class="footer_links">
    				<li><a href="privacy-policy.php">Privacy Policy</a></li>
    				<li><a href="terms.php">Terms and Conditions</a></li>
    				<li><a href="refund-policy.php">Refund Policy</a></li>
    				<li class='red'><a href="https://onlinerishta.in/verify.php">Membership Plan</a></li>
    			</ul>
    		</div>
    		<div class="col-md-2 col_2">
    			<h4>Social</h4>
    			<ul class="footer_social">
				  <li><a href="https://www.facebook.com/groups/919474718518692/" target="_blank"><i class="fa fa-facebook fa1"> </i></a></li>
				  <li><a href="https://mobile.twitter.com/Onlinerishtaa" target="_blank"><i class="fa fa-twitter fa1"> </i></a></li>
				  <li><a href="https://www.youtube.com/channel/UCVbFghbp6HpzgOxMD94aVJA" target="_blank"><i class="fa fa-google-plus fa1"> </i></a></li>
				  <li><a href="https://www.youtube.com/channel/UCVbFghbp6HpzgOxMD94aVJA" target="_blank"><i class="fa fa-youtube fa1"> </i></a></li>
			    </ul>
    		</div>
    		<div class="clearfix"> </div>
    		
    	</div>

<?php


$handle = fopen("count.txt", "r");
    if(!$handle){ echo "could not open the file"; }
    else { $counter = (int ) fread($handle,20);
        $counter++ ;
      fclose ($handle);
      $handle = fopen("count.txt", "w" );
      fwrite($handle,$counter);
      fclose ($handle);
          }


?>
    	<div class="copy">
		      <p>Total Site Visits:- <?php echo $counter; ?></p>  <p>Copyright © <?php echo date('Y'); ?> . All Rights Reserved  &nbsp;<br> Design  & Developed by 
		      <a href="https://onlinerishta.in/cnt/">
		  Sachin Gupta </a> </p>
	        </div>
    </div>




<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/628124bfb0d10b6f3e724d2c/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->

</body>
</html>
