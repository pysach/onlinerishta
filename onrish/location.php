<?php
include_once 'connection.php';

$addon=date('Y-m-d h:i:s');

$ip = $_SERVER['REMOTE_ADDR'];
					$geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$ip"));
                    $country = $geo["geoplugin_countryName"];
                    $city = $geo["geoplugin_city"];
                    
$ipp=$ip." ".$city."-".$country;
$x=$_POST['x'];
$y=$_POST['y'];
$why=$_POST['why'];

if(isset($_POST["x"]) && isset($_POST["y"]))
{

$stmt=$con->prepare("select * from mvisitor where ip=:ip");
$stmt->execute(array(':ip'=>$ipp));
$row=$stmt->fetch(PDO::FETCH_ASSOC);
// if(($row['ip']==$ipp)&&($row['name']!="Index Page"))
   if($stmt->rowCount() > 0)
     {
        $stmt1 = $con->prepare("UPDATE mvisitor SET TXNDATE=:txn, x=:x, y=:y, name=:name WHERE ip=:ipp");
        $stmt1->execute(array(':txn'=>$addon,':x'=>$x,':y'=>$y, ':name'=>$why ,':ipp'=>$ipp));
     }

else{
    
        $query="insert into mvisitor(name,TXNDATE,ip,x,y) values(:name,:addedon,:ip,:x,:y)";

            $pay_data = array(

            ':name' =>$why,
            ':addedon' =>$addon,
            ':ip'=>$ipp, 
            ':x'=>$x,
            ':y'=>$y
             );

      $statement = $con->prepare($query);
      $statement->execute($pay_data);

    
    
}

      
    
}

?>