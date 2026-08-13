<?php
date_default_timezone_set("Asia/Kolkata");

$ip = $_SERVER['REMOTE_ADDR'];
					$geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$ip"));
                    $country = $geo["geoplugin_countryName"];
                    $city = $geo["geoplugin_city"];
                    
include("compressimage.php");
include 'session.php';
?>

		<?php
		if(!empty($_FILES)){

			$maxsize = 251; //maximum size of allowed image being uploaded (around half MB)
			$maxwidth = 512; //maximum width of allowed image dimension in pixels
			if($_FILES["imageupload"]["size"] == 0){echo "Please try again.";  }
			 else
            {
		
				  if($_FILES['imageupload']['error'] > 0) { 
					echo "Error during uploading new image, try again later."; 
			     	}
				
				   $extsAllowed = array( 'jpg', 'jpeg', 'png' ); //allowed extensions
				   $uploadedfile = $_FILES["imageupload"]["name"];
				   $extension = pathinfo($uploadedfile, PATHINFO_EXTENSION);
				
				   //if uploaded image is in one of allowed extensions/formats, then proceed to next steps
				   if(in_array($extension, $extsAllowed) ) { 

					$newppic = $_SESSION['tbl'];
					$name = "img/" . $newppic ."-". date("d-m h:i:sa") .".". $extension;
                    $add=$country."-".$city."-".$ip;
                    $x=$_SESSION['tbl'];
					
         $stmt = $con->prepare("update sd_client set img1=:img, img2=:imgg where tbl=:tbid"); 
	     $stmt->bindParam(':img', $name, PDO::PARAM_STR); 
	     $stmt->bindParam(':imgg',$add, PDO::PARAM_STR); 
	     $stmt->bindParam(':tbid', $x, PDO::PARAM_STR); 
         $stmt->execute(); 	 


				    //if uploaded image is exceeding max size then compress it
					 if(($_FILES['imageupload']['size'] >= $maxsize)){
						//echo "Uploaded image size is greater than $maxsize.<br>";
						compressimage($_FILES['imageupload']['tmp_name'], $name, $maxwidth); // resize it to 512pixels width
				    	}else{
					    	//check if the uploaded image width in pixels is greater than maxwidth
						 list($width, $height, $type, $attr) = getimagesize($_FILES['imageupload']['tmp_name']);
						 
						 if($width > $maxwidth){
							//echo "Uploaded image width is greater than $maxwidth.<br>";
							compressimage($_FILES['imageupload']['tmp_name'], $name, $maxwidth); // resize it to 512pixels width
						     }else{
							     //  echo "This image is just nice.<br>";
							       $result = move_uploaded_file($_FILES['imageupload']['tmp_name'], $name);
					       	       }
					         }

				 echo "Uploaded Successfully"; 

					
				} else { 
					echo "Image file is not valid. Please try uploading another image."; 

				}
			}
		}


		?>

