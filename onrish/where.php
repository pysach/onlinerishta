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
          $.ajax({
          url:"location.php",
          method:"POST",
          data:{x:x, y:y},
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