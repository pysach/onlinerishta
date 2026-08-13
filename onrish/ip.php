<html>
<form action="ip.php" method="POST">

<input type="text" name="location">
<input type="submit" name="submit" value="submit">
</form>
</html>


<?php
echo "<pre>";

if(isset($_POST['submit'])){
$p=$_POST['location'];
//$ip = $_SERVER['REMOTE_ADDR'];
					$geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$p"));
                    $country = $geo["geoplugin_countryName"];
                    $city = $geo["geoplugin_city"];
                     print_r($geo);

}
echo "<br>";

get_client_ip();
//echo $d;

function get_client_ip() {
    $ipaddress = '';
    if (isset($_SERVER['HTTP_CLIENT_IP']))
       echo $ipaddress = $_SERVER['HTTP_CLIENT_IP'];

    else if(isset($_SERVER['HTTP_X_FORWARDED_FOR']))
       echo $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];

    else if(isset($_SERVER['HTTP_X_FORWARDED']))
        echo $ipaddress = $_SERVER['HTTP_X_FORWARDED'];

    else if(isset($_SERVER['HTTP_FORWARDED_FOR']))
        echo $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];

    else if(isset($_SERVER['HTTP_FORWARDED']))
        echo $ipaddress = $_SERVER['HTTP_FORWARDED'];

    else if(isset($_SERVER['REMOTE_ADDR']))
        echo $ipaddress = $_SERVER['REMOTE_ADDR'];

    else
       echo $ipaddress = 'UNKNOWN';
    return $ipaddress;
}
?>




<?php
extract($_POST);
if($mapLat =='' && $mapLong ==''){
        // Get lat long from google
        $latlong    =   get_lat_long($location); // create a function with the name "get_lat_long" given as below
        $map        =   explode(',' ,$latlong);
        $mapLat         =   $map[0];
        $mapLong    =   $map[1];    
}


// function to get  the address
function get_lat_long($address){

    $address = str_replace(" ", "+", $address);

    $json = file_get_contents("http://maps.google.com/maps/api/geocode/json?address=$address&sensor=false&region=$region");
    $json = json_decode($json);

    $lat = $json->{'results'}[0]->{'geometry'}->{'location'}->{'lat'};
    $long = $json->{'results'}[0]->{'geometry'}->{'location'}->{'lng'};
    return $lat.','.$long;
}
?>