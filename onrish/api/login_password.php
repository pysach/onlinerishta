<?php
header('Content-Type: application/json');
include 'db.php';
$data=json_decode(file_get_contents("php://input"),true);
$stmt=$conn->prepare("SELECT password,force_otp FROM users WHERE username=?");
$stmt->bind_param("s",$data['username']);
$stmt->execute();
$user=$stmt->get_result()->fetch_assoc();
if(!$user||!password_verify($data['password'],$user['password'])){
 echo json_encode(["success"=>false,"message"=>"Invalid credentials"]);exit;
}
if($user['force_otp']){
 echo json_encode(["success"=>false,"message"=>"Login using OTP once"]);exit;
}
echo json_encode(["success"=>true]);
?>