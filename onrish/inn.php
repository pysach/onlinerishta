<?php
function hello()
{
   if (function_exists('exif_imagetype')) {
    return "This function is installed";
      } else {
     return "It is not";
   }

}

$x=hello();
echo $x;
?>