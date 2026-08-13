<style>
.bg-image {
  /* Add the blur effect */
  filter: blur(5px);
  -webkit-filter: blur(5px);
  }
  
  .bg-text {
/*    background-color: rgb(0,0,0);
    background-color: #55555540;*/
    background-color: transparent;
    color: #fdfcfc;
    font-weight: 100;
    font-size: x-large;
    font-style: italic;
    border: 0px solid #e62121;
    position: absolute;
    top: 50%;
    left: 32%;
    transform: translate(-50%, -50%);
    z-index: 2;
    width: 100%;
    text-align: center;
    padding: 30px;
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
    border: 50px solid #e62121;
    position: absolute;
    top: 50%;
    left: 38%;
    transform: translate(-50%, -50%);
    z-index: 2;
    width: 100%;
    text-align: center;
    padding: 30px;
} 
  

.avatar.avatar-xl {
height:70%;
width:70%;
    
}
.avatar {
    width: 2rem;
    height: 2rem;
    line-height: 2rem;
    border-radius: 50%;
    display: inline-block;
    background: #ced4da no-repeat center/cover;
    position: relative;
    text-align: center;
    color: #868e96;
    font-weight: 600;
    vertical-align: bottom;
}


  
  
  
</style>


   	 
   	 
   	 
   	    	    <?php if($row['img1'] == NULL) { ?>
	    	       <div class="col-sm-3 profile_left-top ">
	    	       <img src="<?php echo $row['img2']; ?>"  class="img-responsive" alt="Upload Pic"/>
	    	      <!--<div class="bg-text"> <p>* Please Upload Your Photograph</p> <p>* Under Verification </p></div>-->
	    	       </div>


	            <?php   }  elseif($row['sd_verify']=="VERIFIED") { ?>
	    	    
	              <div class="col-sm-3 profile_left-top">
	    	      <img src="<?php echo $row['img1']; ?>" class="avatar avatar-xl mr-3" alt=""/>
	              <div class="bg-text "> <p>Verified Member</p> </div>
                  </div>

	            <?php   }  elseif($row['sd_verify'] == "No") { ?>
	    	    
	              <div class="col-sm-3 profile_left-top bg-image">
	    	      <img src="<?php echo $row['img1']; ?>"  " class="avatar avatar-xl mr-3" alt=""/>
	    	      </div>

	             <?php   }  elseif($row['sd_verify'] == "Premium") { ?>
	    	    
	              <div class="col-sm-3 profile_left-top ">
	    	      <img src="<?php echo $row['img1']; ?>"  class="avatar avatar-xl mr-3" alt=""/>
	              <div class="bg-text"> <p>Premium member</p> </div>
	    	      
	              </div>
	       
	            <?php   }  elseif($row['sd_verify'] == "Engaged") { ?>
	    	    
	              <div class="col-sm-3 profile_left-top bg-image1">
	    	      <img src="<?php echo $row['img1']; ?>" class="avatar avatar-xl mr-3" alt=""/>
	             
	              <div class="bg-text1"> <p>ENGAGED</p> </div>
	    	      
	              </div>
	       
	              
	           <?php  }  else  {?>
	             <div class="col-sm-3 profile_left-top ">
	             <img src="<?php echo $row['img1']; ?>" class="avatar avatar-xl mr-3" alt=""/> 
                       <!--<span style="background-image: url(<?php echo $row['img1']; ?>)" class="avatar avatar-xl mr-3"></span>-->
	             </div>
               <?php } ?>	    
               <br>
	